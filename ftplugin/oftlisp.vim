setlocal comments=:;;;,:;;,:;
setlocal formatoptions+=o
setlocal iskeyword=@,#,$,*,+,45-57,60-63,_

" Because it's a lot harder to type the parentheses on the wireless folding
" keyboard I have.
if exists("g:oftlisp_alt_parens")
	if g:oftlisp_alt_parens
		inoremap { (
		inoremap } )
	endif
endif
