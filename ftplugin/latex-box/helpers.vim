" Tex_FindFile: finds a file in the vim's 'path' {{{
" Description: finds a file in vim's 'path'
function! Tex_FindFile(fname, path, suffixesadd)
	if exists('*findfile')
		let _suffixesadd = &suffixesadd
		let &suffixesadd = a:suffixesadd
		let retval = findfile(a:fname, a:path)
		let &suffixesadd = _suffixesadd
	else
		" split a new window so we do not screw with the current buffer. We
		" want to use the same filename each time so that multiple scratch
		" buffers are not created.
		let retval = ''
		silent! split __HOPEFULLY_THIS_FILE_DOES_NOT_EXIST__
		let _suffixesadd = &suffixesadd
		let _path = &path
		let &suffixesadd = a:suffixesadd
		let &path = a:path
		exec 'silent! find '.a:fname
		if bufname('%') != '__HOPEFULLY_THIS_FILE_DOES_NOT_EXIST__'
			let retval = expand('%:p')
		end
		silent! bdelete!
		let &suffixesadd = _suffixesadd
		let &path = _path
	endif
	return retval
endfunction " }}}


" ==============================================================================
" Uncategorized helper functions
" ============================================================================== 
" Tex_Strntok: extract the n^th token from a list {{{
" example: Strntok('1,23,3', ',', 2) = 23
fun! Tex_Strntok(s, tok, n)
	return matchstr( a:s.a:tok[0], '\v(\zs([^'.a:tok.']*)\ze['.a:tok.']){'.a:n.'}')
endfun

" }}}


" Tex_GetVarValue: gets the value of the variable {{{
" Description: 
"   See if a window-local, buffer-local or global variable with the given name
"   exists and if so, returns the corresponding value. If none exist, return
"   an empty string.
function! Tex_GetVarValue(varname, ...)
    if exists('w:'.a:varname)
        return w:{a:varname}
    elseif exists('b:'.a:varname)
        return b:{a:varname}
    elseif exists('g:'.a:varname)
        return g:{a:varname}
    elseif a:0 > 0
        return a:1
    else
        return ''
    endif
endfunction " }}}

" Tex_GetPos{{{
function! Tex_GetPos()
    if exists('*getpos')
        return getpos('.')
    else
        return line('.').' | normal! '.virtcol('.').'|'
    endif
endfunction " }}}



