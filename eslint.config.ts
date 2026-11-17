import markdown from '@eslint/markdown'
import md from 'eslint-markdown'
import sentencesPerLine from 'eslint-plugin-sentences-per-line'
import noSplitSentence from './eslint/markdown/no-split-sentence.js'

export default [
  {
    files: ['**/*.md'],
    ignores: ['.opencode/**', '.agents/**'],
    plugins: {
      markdown,
      md,
      'sentences-per-line': sentencesPerLine,
      local: {
        rules: {
          'no-split-sentence': noSplitSentence,
        },
      },
    },
    language: 'markdown/gfm',
    languageOptions: {
      frontmatter: 'yaml',
    },
    rules: {
      // eslint-markdown's recommended set lints the same GFM AST as
      // @eslint/markdown, so it adds rules without a second parse.
      ...md.configs.recommended.rules,
      // Off because it rewrites the markdown, text, and yaml fence labels in
      // requirements/ and guides/ to their shorthand forms.
      'md/code-lang-shorthand': 'off',
      // Off because course/syllabus.md uses en and em dashes in its dates and
      // titles, and the guides use them deliberately.
      'md/no-irregular-dash': 'off',
      'sentences-per-line/one': 'error',
      // Registered but off, so it reports nothing.
      'local/no-split-sentence': 'off',
      // Raw HTML is rejected except for the <h2 id="..."> anchors that carry
      // the stable permalinks requirements/repository-requirements.md requires.
      // The other built-in markdown/* rules stay off: no-missing-label-refs
      // misreads the syllabus's > [!NOTE] and > [!IMPORTANT] alerts as
      // undefined label references.
      'markdown/no-html': ['error', { allowed: ['h2'] }],
    },
  },
]
