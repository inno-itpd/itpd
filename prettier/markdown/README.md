# Local Markdown sentences-per-line formatter

This wrapper preserves the upstream `prettier-plugin-sentences-per-line` behavior for prose and leaves Markdown table rows intact.
The upstream plugin inserts sentence breaks inside table cells, which invalidates rows because Markdown tables require each row to occupy one physical source line.
The wrapper restores a single whitespace node for every upstream sentence break inside a table before printing.
The wrapper also inserts a break after any sentence that ends in a number, because upstream skips every word node matching `/^\s*\d+\./` in order to protect list markers.
A list marker is structural and never reaches the word stream, so that test also swallows genuine sentence ends such as `Week 1.` and leaves them unsplit.
Interior decimals such as `Apache 2.0` and `version 14.14` are unaffected, because the trailing period they need is not the end of the word.
Without this correction the formatter and the `sentences-per-line/one` lint rule disagree on every sentence that ends in a number.
`scripts/markdown.mjs` invokes Prettier through its JavaScript API because Prettier's CLI loads its built-in Markdown printer after configured plugins and ignores sentence-per-line printer overrides.
