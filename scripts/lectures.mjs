import { execFileSync } from 'node:child_process'
import {
  existsSync,
  mkdtempSync,
  readFileSync,
  rmSync,
  statSync,
} from 'node:fs'
import { tmpdir } from 'node:os'
import { basename, join, resolve } from 'node:path'
import { fileURLToPath } from 'node:url'

// The Typst version the committed PDFs were built with, and the moment the
// decks carry in their metadata. Typst writes /CreationDate and /ModDate in
// UTC when SOURCE_DATE_EPOCH is set, so a pinned epoch makes a compile
// byte-reproducible on any machine and in any timezone.
const typstVersion = '0.15.1'
const sourceDateEpoch = '1790714660'

const root = fileURLToPath(new URL('..', import.meta.url))
const buildEnvironment = {
  ...process.env,
  SOURCE_DATE_EPOCH: sourceDateEpoch,
  TZ: 'UTC',
}

const [command, ...additionalArgs] = process.argv.slice(2)

if (!['build', 'check'].includes(command)) {
  throw new Error(`Unknown lecture command: ${command}`)
}

if (additionalArgs.length > 0) {
  throw new Error(`${command} does not accept additional arguments`)
}

const installedVersion = execFileSync('typst', ['--version'], { cwd: root })
  .toString()
  .trim()
  .split(' ')[1]

if (installedVersion !== typstVersion) {
  throw new Error(
    `The committed decks were built with Typst ${typstVersion}, and Typst ${installedVersion} is on PATH. ` +
      `Update the pin in scripts/lectures.mjs, run pnpm run build:lectures, and read the deck diff.`,
  )
}

const tracked = execFileSync('git', ['ls-files', '-z', '--', 'lectures'], {
  cwd: root,
})
  .toString()
  .split('\0')
  .filter(Boolean)
  .sort()

const decks = tracked
  .filter((file) => file.endsWith('.typ'))
  .map((source) => ({
    source,
    pdf: `${source.slice(0, -'.typ'.length)}.pdf`,
  }))

const orphans = tracked.filter(
  (file) => file.endsWith('.pdf') && !decks.some((deck) => deck.pdf === file),
)

const compile = (source, target) => {
  try {
    execFileSync('typst', ['compile', resolve(root, source), target], {
      cwd: root,
      env: buildEnvironment,
      stdio: ['ignore', 'inherit', 'inherit'],
    })
    return true
  } catch {
    return false
  }
}

if (command === 'build') {
  for (const { source, pdf } of decks) {
    if (!compile(source, resolve(root, pdf))) {
      throw new Error(`${source} does not compile`)
    }
    console.log(`built ${pdf}`)
  }
  process.exit(0)
}

const rebuilt = mkdtempSync(join(tmpdir(), 'itpd-lectures-'))
const problems = []

try {
  for (const { source, pdf } of decks) {
    const target = join(rebuilt, basename(pdf))

    if (!compile(source, target)) {
      problems.push(`${source} does not compile`)
      continue
    }

    const committed = resolve(root, pdf)

    if (!existsSync(committed)) {
      problems.push(`${pdf} is missing, run pnpm run build:lectures`)
      continue
    }

    if (!readFileSync(committed).equals(readFileSync(target))) {
      problems.push(
        `${pdf} is ${statSync(committed).size} bytes and the source builds ${statSync(target).size}, ` +
          `run pnpm run build:lectures`,
      )
    }
  }

  for (const orphan of orphans) {
    problems.push(
      `${orphan} has no source, delete it or add the .typ next to it`,
    )
  }
} finally {
  rmSync(rebuilt, { force: true, recursive: true })
}

if (problems.length > 0) {
  console.error('The committed decks are out of date:')
  for (const problem of problems) {
    console.error(`  ${problem}`)
  }
  process.exit(1)
}

console.log(
  `lectures: ${decks.length} deck(s) match their sources, built with Typst ${typstVersion}`,
)
