setlocal comments=:;;;,:;;,:;
setlocal formatoptions+=o
setlocal iskeyword=@,#,$,*,+,45-57,60-63,_

if g:oftlisp_alt_parens
	inoremap { (
	inoremap } )
endif
