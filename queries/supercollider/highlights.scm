; highlights.scm
; See this for full list: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md

; comments
(line_comment) @comment @spell

(block_comment) @comment @spell

; Argument definition
(argument
  name: (identifier) @variable.parameter)

; Variables
(local_var
  name: (identifier) @variable)

(environment_var
  name: (identifier) @variable.member)

(single_letter_var
  name: (identifier) @variable)

; Builtins
(builtin_var) @variable.builtin
(builtin_constant) @constant.builtin

; Functions
(function_definition
  name: (variable) @function)

; For function calls
(named_argument
  name: (identifier) @variable.parameter)

(associative_item (identifier)) @variable.member

; Methods
(method_name) @function.method.call
(partial) @operator

; Classes
(class) @type
(parent_class) @type

(instance_method_name) @function.method
(class_method_name) @function.method

(instance_var
  name: (identifier)) @variable

; Literals
(number) @number
(bool) @boolean
(float) @number.float
(string) @string
(symbol) @string.special.symbol

; Operators
[
  "&&"
  "||"
  "&"
  "|"
  "^"
  "=="
  "!="
  "<"
  "<="
  ">"
  ">="
  "<<"
  ">>"
  "+"
  "-"
  "*"
  "/"
  "%"
  "="
  "++"
  "+/+"
  ".."
  "..."
] @operator

; Keywords
[
  "arg"
  "classvar"
  "const"
  "var"
] @keyword

; Brackets
[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
  "|"
] @punctuation.bracket

; Delimiters
[
  ";"
  "."
  ","
] @punctuation.delimiter

; control structure
[
  "if"
  "while"
  "for"
  "forBy"
  "case"
  "switch"
  "?"
  "!?"
  "??"
]
@keyword.conditional

(escape_sequence) @string.escape

; SinOsc.ar()!2
(duplicated_statement) @keyword.repeat
