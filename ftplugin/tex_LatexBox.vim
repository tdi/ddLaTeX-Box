" LaTeX Box plugin for Vim
" Maintainer: David Munger
" Email: mungerd@gmail.com
" Version: 0.9.6

if exists('*fnameescape')
	function! s:FNameEscape(s)
		return fnameescape(a:s)
	endfunction
else
	function! s:FNameEscape(s)
		return a:s
	endfunction
endif

setlocal nopaste
if !exists('s:LatexBox_loaded')

	let prefix = expand('<sfile>:p:h') . '/latex-box/'

	execute 'source ' . s:FNameEscape(prefix . 'common.vim')
	execute 'source ' . s:FNameEscape(prefix . 'complete.vim')
	execute 'source ' . s:FNameEscape(prefix . 'motion.vim')
	execute 'source ' . s:FNameEscape(prefix . 'teximaps.vim')

	execute 'source ' . s:FNameEscape(prefix . 'mappings.vim')
	" execute 'source ' . s:FNameEscape(prefix . 'indent.vim')
	execute 'source ' . s:FNameEscape(prefix . 'findmain.vim')
	execute 'source ' . s:FNameEscape(prefix . 'folding.vim')


	let s:LatexBox_loaded = 1

endif


" vim:fdm=marker:ff=unix:noet:ts=4:sw=4
