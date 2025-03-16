
; COMMENTS
; ========

; Single-line comments.
(
  (comment) @meta.embedded.line.jinja @comment.block.jinja
  (#is? test.endsOnSameRowAs startPosition)
)

; Multi-line comments.
(
  (comment) @meta.embedded.block.jinja @comment.block.jinja
  (#is-not? test.endsOnSameRowAs startPosition)
)

; MISC
; ====

(
  [
    (extends_statement)
    (block_start_statement)
    (if_start_statement)
    (if_end_statement)
    (else_statement)
    (elif_statement)
    (for_start_statement)
    (for_else_statement)
    (for_end_statement)
    (macro_start_statement)
    (macro_end_statement)
    (with_start_statement)
    (with_end_statement)
    (block_start_statement)
    (block_end_statement)
    (raw_start_statement)
    (raw_end_statement)
    (custom_statement)
  ] @meta.embedded.line.jinja
)

(output) @meta.embedded.line.jinja


[
  "{%"
  "{%-"
  "{%+"
] @punctuation.definition.statement.begin.jinja

[
  "%}"
  "-%}"
  "+%}"
] @punctuation.definition.statement.end.jinja

[
  "block"
  "endblock"
  "call"
  "endcall"
  "elif"
  "else"
  "extends"
  "filter"
  "endfilter"
  "for"
  "endfor"
  "if"
  "endif"
  "include"
  "import"
  "macro"
  "endmacro"
  "raw"
  "endraw"
  "set"
  "endset"
  "with"
  "endwith"
] @keyword.control.statement.jinja

[
  "ignore missing"
  "with context"
  "without context"
] @storage.type.annotation.jinja
