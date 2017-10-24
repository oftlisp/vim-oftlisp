if exists("b:current_syntax")
  finish
endif

" TODO Investigate generating this definition from the definition of the
" std/prelude module.
syn keyword oftlispBuiltins -> ->> >>= <$> <*> 0? 1+ 1- all and any append apply atomic-word atomic-word.cas atomic-word.load atomic-word.store byte? bytes? compare concat concat-strings cons cons? eq exit exit-with gensym geq greater head float? filter fixnum? foldl foldr for-each group-by id init last length leq less list list? lookup lookup-by make-vector map neq nil? not object? object-get-property object-has-property? or or-default panic print println reverse shl? show skip sort sort-by split-at string? symbol? tail take todo
syn keyword oftlispOperators = /= < > + - * / mod
syn keyword oftlispThis this
syn keyword oftlispTodoMacro todo

syn keyword oftlispControl cond do else fn if macro-progn match progn unless when
syn keyword oftlispDecls <- ctor def defclass defmacro defmethod defn defrec deftest dtor let let1 mdef val
syn keyword oftlispModuleStmts module import

syn keyword oftlispCommentTodo BUG FIXME TODO XXX contained
syn match oftlispComment ";.*" contains=oftlispCommentTodo

syn match oftlispSymbol "[a-zA-Z+./$?*#=<>_-][0-9a-zA-Z+./$?*#=<>_-]*"
syn match oftlispCadr "c[ad]\+r"
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

hi link oftlispBuiltins Function
hi link oftlispCadr Function
hi link oftlispOperators Operator
hi link oftlispThis Constant
hi link oftlispTodoMacro Todo

hi link oftlispControl Statement
hi link oftlispDecls Statement
hi link oftlispModuleStmts Include

hi link oftlispComment Comment
hi link oftlispCommentTodo Todo

hi link oftlispSymbol Identifier
hi link oftlispNumber Number
hi link oftlispBool Boolean
hi link oftlispNil Constant
hi link oftlispString String
hi link oftlispStringEsc SpecialChar
hi link oftlispStringEscUnknown Error
hi link oftlispStringHex2 SpecialChar
hi link oftlispStringHex4 SpecialChar
hi link oftlispStringHex8 SpecialChar
