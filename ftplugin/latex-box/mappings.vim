" LaTeX Box mappings

if exists("g:LatexBox_no_mappings")
	finish
endif


" View {{{
map <buffer> <LocalLeader>lv :LatexView<CR>
" }}}

" Error Format {{{
" This assumes we're using the -file-line-error with [pdf]latex.
setlocal efm=%E%f:%l:%m,%-Cl.%l\ %m,%-G
" }}}

" TOC {{{
command! LatexTOC call LatexBox_TOC()
map <silent> <buffer> <LocalLeader>lt :LatexTOC<CR>
" }}}

" begin/end pairs {{{
nmap <buffer> % <Plug>LatexBox_JumpToMatch
xmap <buffer> % <Plug>LatexBox_JumpToMatch
vmap <buffer> ie <Plug>LatexBox_SelectCurrentEnvInner
vmap <buffer> ae <Plug>LatexBox_SelectCurrentEnvOuter
omap <buffer> ie :normal vie<CR>
omap <buffer> ae :normal vae<CR>
vmap <buffer> i$ <Plug>LatexBox_SelectInlineMathInner
vmap <buffer> a$ <Plug>LatexBox_SelectInlineMathOuter
omap <buffer> i$ :normal vi$<CR>
omap <buffer> a$ :normal va$<CR>
" }}}


map <C-I> <Esc>:!pdflatex.sh +3 +b +o "%:p"<CR>
map <C-B> <Esc>:!pdflatex.sh +3 +o "%:p"<CR>
map <C-K> <Esc>:!pdflatex.sh -kk "%:p"<CR>


setlocal omnifunc=LatexBox_Complete

finish

" Suggested mappings:

" Motion {{{
map <silent> <buffer> ¶ :call LatexBox_JumpToNextBraces(0)<CR>
map <silent> <buffer> § :call LatexBox_JumpToNextBraces(1)<CR>
imap <silent> <buffer> ¶ <C-R>=LatexBox_JumpToNextBraces(0)<CR>
imap <silent> <buffer> § <C-R>=LatexBox_JumpToNextBraces(1)<CR>
" }}}

" vim:fdm=marker:ff=unix:noet:ts=4:sw=4
