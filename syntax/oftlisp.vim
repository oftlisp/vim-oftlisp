if exists("b:current_syntax")
  finish
endif

" TODO Investigate generating this definition from the definition of the
" std/prelude module.
syn keyword oftlispBuiltins -> ->> >>= <$> <*> all and any byte? bytes? car cdr cons cons? eq head float? filter fixnum? foldl foldr group-by last list? map neq nil? not object? object-get-property object-has-property? or panic print println pure show skip stm-new stm-read stm-write string? symbol? tail todo
syn keyword oftlispOperators = /= + - * / mod
syn keyword oftlispTodoMacro todo

syn keyword oftlispControl cond do else fn if match progn
syn keyword oftlispDecls ctor def defclass defmacro defmethod defn mdef val
syn keyword oftlispModuleStmts module import

syn keyword oftlispCommentTodo BUG FIXME TODO XXX contained
syn match oftlispComment ";.*" contains=oftlispCommentTodo

syn match oftlispSymbol "[a-zA-Z+./$?*#=<>_-][0-9a-zA-Z+./$?*#=<>_-]*"
syn region oftlispString start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=oftlispStringEsc,oftlispStringHex2,oftlispStringHex4,oftlispStringHex8,oftlispStringEscUnknown
syn match oftlispStringEscUnknown "\\." contained
syn match oftlispStringEsc "\\[\"'\\nrt]" contained
syn match oftlispStringHex2 "\\x[0-9a-fA-F]\{2\}" contained
syn match oftlispStringHex4 "\\u[0-9a-fA-F]\{4\}" contained
syn match oftlispStringHex8 "\\U[0-9a-fA-F]\{8\}" contained
syn match oftlispNumber "[0-9]\+\(\.[0-9]\+\)\?"
syn keyword oftlispBool true false
syn keyword oftlispNil nil

let b:current_syntax = "oftlisp"

hi def link oftlispBuiltins Function
hi def link oftlispOperators Operator
hi def link oftlispTodoMacro Todo

hi def link oftlispControl Statement
hi def link oftlispDecls Statement
hi def link oftlispModuleStmts Include

hi def link oftlispComment Comment
hi def link oftlispCommentTodo Todo

hi def link oftlispSymbol Identifier
hi def link oftlispNumber Number
hi def link oftlispBool Boolean
hi def link oftlispNil Constant
hi def link oftlispString String
hi def link oftlispStringEsc SpecialChar
hi def link oftlispStringEscUnknown Error
hi def link oftlispStringHex2 SpecialChar
hi def link oftlispStringHex4 SpecialChar
hi def link oftlispStringHex8 SpecialChar
