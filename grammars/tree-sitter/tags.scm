
; `tree-sitter-jinja2` doesn't parse the contents of the macro expression —
; it's an injection handled by Python. So if we want just the name of the
; function (rather than its full method signature), we've got to strip the
; rest.
(
  (macro_start_statement (expression) @name) @definition.function
  (#set! symbol.strip "\\(.*$")
)
