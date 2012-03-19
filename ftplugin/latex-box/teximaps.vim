" 	     File: teximaps.vim
"      Author: Dariusz Dwornikowski
"  Description: imaps from vim latexsuite
"  Version:    0.1 
  
let s:save_cpo = &cpo
set cpo&vim

let s:path = expand('<sfile>:p:h')


"exe 'setlocal dict^='.fnameescape(s:path.'/dictionaries/dictionary')

" Definition to Config
  let g:Tex_Leader = '`'
  let g:Tex_Leader2 = ','
  
let s:figure =     "\\begin{figure}[<+htpb+>]\<cr>\\begin{center}\<cr>\\psfig{figure=<+eps file+>}\<cr>\\end{center}\<cr>\\caption{<+caption text+>}\<cr>\\label{fig:<+label+>}\<cr>\\end{figure}<++>"
let s:figure_graphicx =    "\\begin{figure}[<+htpb+>]\<cr>\\begin{center}\<cr>\\includegraphics{<+file+>}\<cr>\\end{center}\<cr>\\caption{<+caption text+>}\<cr>\\label{fig:<+label+>}\<cr>\\end{figure}<++>"
let s:minipage =   "\\begin{minipage}[<+tb+>]{<+width+>}\<cr><++>\<cr>\\end{minipage}<++>"
let s:picture =    "\\begin{picture}(<+width+>, <+height+>)(<+xoff+>,<+yoff+>)\<cr>\\put(<+xoff+>,<+yoff+>){\\framebox(<++>,<++>){<++>}}\<cr>\\end{picture}<++>"
let s:list =       "\\begin{list}{<+label+>}{<+spacing+>}\<cr>\\item <++>\<cr>\\end{list}<++>"
let s:table =      "\\begin{table}\<cr>\\centering\<cr>\\begin{tabular}{<+dimensions+>}\<cr><++>\<cr>\\end{tabular}\<cr>\\caption{<+Caption text+>}\<cr>\\label{tab:<+label+>}\<cr>\\end{table}<++>"
let s:array =      "\\left<++>\<cr>\\begin{array}{<+dimension+>}\<cr><+elements+>\<cr>\\end{array}\<cr>\\right<++>"
let s:description ="\\begin{description}\<cr>\\item[<+label+>]<++>\<cr>\\end{description}<++>"
let s:document =   "\\documentclass[<+options+>]{<+class+>}\<cr>\<cr>\\begin{document}\<cr><++>\<cr>\\end{document}"
let s:tabular = "\\begin{tabular}[<+hbtp+>]{<+format+>}\<cr><++>\<cr>\\end{tabular}"
let s:tabular_star = "\\begin{tabular*}[<+hbtp+>]{<+format+>}\<cr><++>\<cr>\\end{tabular*}"
let s:beamerframe = "\\begin{frame}\<cr>\\frametitle{<++>}\<cr>\<cr>\\end{frame}"

  
  " Taken from vim-latex {{{ 
  "
  call IMAP ('__', '_{<++>}<++>', "tex")
	call IMAP ('()', '(<++>)<++>', "tex")
	call IMAP ('[]', '[<++>]<++>', "tex")
	call IMAP ('{}', '{<++>}<++>', "tex")
	call IMAP ('^^', '^{<++>}<++>', "tex")
	call IMAP ('$$', '$<++>$<++>', "tex")
	call IMAP ('==', '&=& ', "tex")
	call IMAP ('~~', '&\approx& ', "tex")
	call IMAP ('=~', '\approx', "tex")
	call IMAP ('::', '\dots', "tex")
	call IMAP ('((', '\left( <++> \right)<++>', "tex")
	call IMAP ('[[', '\left[ <++> \right]<++>', "tex")
	call IMAP ('{{', '\left\{ <++> \right\}<++>', "tex")
	call IMAP (g:Tex_Leader.'^', '\hat{<++>}<++>', "tex")
	call IMAP (g:Tex_Leader.'_', '\bar{<++>}<++>', "tex")
	call IMAP (g:Tex_Leader.'6', '\partial', "tex")
	call IMAP (g:Tex_Leader.'8', '\infty', "tex")
	call IMAP (g:Tex_Leader.'/', '\frac{<++>}{<++>}<++>', "tex")
	call IMAP (g:Tex_Leader.'%', '\frac{<++>}{<++>}<++>', "tex")
	call IMAP (g:Tex_Leader.'@', '\circ', "tex")
	call IMAP (g:Tex_Leader.'0', '^\circ', "tex")
	call IMAP (g:Tex_Leader.'=', '\equiv', "tex")
	call IMAP (g:Tex_Leader."\\",'\setminus', "tex")
	call IMAP (g:Tex_Leader.'.', '\cdot', "tex")
	call IMAP (g:Tex_Leader.'*', '\times', "tex")
	call IMAP (g:Tex_Leader.'&', '\wedge', "tex")
	call IMAP (g:Tex_Leader.'-', '\bigcap', "tex")
	call IMAP (g:Tex_Leader.'+', '\bigcup', "tex")
	call IMAP (g:Tex_Leader.'M', '\sum_{<++>}^{<++>}<++>', 'tex')
	call IMAP (g:Tex_Leader.'S', '\sum_{<++>}^{<++>}<++>', 'tex')
	call IMAP (g:Tex_Leader.'(', '\subset', "tex")
	call IMAP (g:Tex_Leader.')', '\supset', "tex")
	call IMAP (g:Tex_Leader.'<', '\le', "tex")
	call IMAP (g:Tex_Leader.'>', '\ge', "tex")
	call IMAP (g:Tex_Leader.',', '\nonumber', "tex")
	call IMAP (g:Tex_Leader.'~', '\tilde{<++>}<++>', "tex")
	call IMAP (g:Tex_Leader.';', '\dot{<++>}<++>', "tex")
	call IMAP (g:Tex_Leader.':', '\ddot{<++>}<++>', "tex")
	call IMAP (g:Tex_Leader.'2', '\sqrt{<++>}<++>', "tex")
	call IMAP (g:Tex_Leader.'|', '\Big|', "tex")
	call IMAP (g:Tex_Leader.'I', "\\int_{<++>}^{<++>}<++>", 'tex')
  " }}}
	" Greek Letters {{{
	call IMAP(g:Tex_Leader.'a', '\alpha', 'tex')
	call IMAP(g:Tex_Leader.'b', '\beta', 'tex')
	call IMAP(g:Tex_Leader.'c', '\chi', 'tex')
	call IMAP(g:Tex_Leader.'d', '\delta', 'tex')
	call IMAP(g:Tex_Leader.'e', '\varepsilon', 'tex')
	call IMAP(g:Tex_Leader.'f', '\varphi', 'tex')
	call IMAP(g:Tex_Leader.'g', '\gamma', 'tex')
	call IMAP(g:Tex_Leader.'h', '\eta', 'tex')
	call IMAP(g:Tex_Leader.'k', '\kappa', 'tex')
	call IMAP(g:Tex_Leader.'l', '\lambda', 'tex')
	call IMAP(g:Tex_Leader.'m', '\mu', 'tex')
	call IMAP(g:Tex_Leader.'n', '\nu', 'tex')
	call IMAP(g:Tex_Leader.'p', '\pi', 'tex')
	call IMAP(g:Tex_Leader.'q', '\theta', 'tex')
	call IMAP(g:Tex_Leader.'r', '\rho', 'tex')
	call IMAP(g:Tex_Leader.'s', '\sigma', 'tex')
	call IMAP(g:Tex_Leader.'t', '\tau', 'tex')
	call IMAP(g:Tex_Leader.'u', '\upsilon', 'tex')
	call IMAP(g:Tex_Leader.'v', '\varsigma', 'tex')
	call IMAP(g:Tex_Leader.'w', '\omega', 'tex')
	call IMAP(g:Tex_Leader.'w', '\wedge', 'tex')  " AUCTEX style
	call IMAP(g:Tex_Leader.'x', '\xi', 'tex')
	call IMAP(g:Tex_Leader.'y', '\psi', 'tex')
	call IMAP(g:Tex_Leader.'z', '\zeta', 'tex')
	" not all capital greek letters exist in LaTeX!
	" reference: http://www.giss.nasa.gov/latex/ltx-405.html
	call IMAP(g:Tex_Leader.'D', '\Delta', 'tex')
	call IMAP(g:Tex_Leader.'F', '\Phi', 'tex')
	call IMAP(g:Tex_Leader.'G', '\Gamma', 'tex')
	call IMAP(g:Tex_Leader.'Q', '\Theta', 'tex')
	call IMAP(g:Tex_Leader.'L', '\Lambda', 'tex')
	call IMAP(g:Tex_Leader.'X', '\Xi', 'tex')
	call IMAP(g:Tex_Leader.'Y', '\Psi', 'tex')
	call IMAP(g:Tex_Leader.'S', '\Sigma', 'tex')
	call IMAP(g:Tex_Leader.'U', '\Upsilon', 'tex')
	call IMAP(g:Tex_Leader.'W', '\Omega', 'tex')
	" }}}



" }}}
" Tex_EnvMacros: sets up maps and menus for environments {{{
" Description: 
function! <SID>Tex_EnvMacros(lhs, name)

	let extra = ''

	let vright = ''
	let vleft = ''
	if exists('s:vis_'.a:name.'_right')
		let vright = s:vis_{a:name}_right
		let vleft = s:vis_{a:name}_left
	endif
	let vrhs = "\<C-\\>\<C-N>:call VEnclose('".vleft."', '".vright."', '\\begin{".a:name."}', '\\end{".a:name."}')\<CR>"

	if a:lhs != '' 

		let vlhs = g:Tex_Leader2.substitute(tolower(a:lhs), '^.', '', '')
"		if g:Tex_EnvironmentMaps && !exists('s:doneOnce')
			call IMAP(a:lhs, "\<C-r>=Tex_PutEnvironment('".a:name."')\<CR>", 'tex')
			exec 'vnoremap <silent> '.vlhs.' '.vrhs
"		endif
	endif
endfunction 
" }}}

" }}}
" Tex_SpecialMacros: macros with special right hand sides {{{
" Description: 
function! <SID>Tex_SpecialMacros(lhs, name, irhs, ...)

	let wiz = 1
	if a:0 > 0 && a:1 == 0
		let wiz = 0
	endif

	let vright = ''
	let vleft = ''
	if exists('s:vis_'.a:name.'_right')
		let vright = s:vis_{a:name}_right
		let vleft = s:vis_{a:name}_left
	endif
	let vrhs = "\<C-\\>\<C-N>:call VEnclose('".vleft."', '".vright."', '\\begin{".a:name."}', '\\end{".a:name."}')\<CR>"

	if a:lhs != ''

		let vlhs = g:Tex_Leader2.substitute(tolower(a:lhs), '^.', '', '')

	"	if g:Tex_EnvironmentMaps && !exists('s:doneOnce')
			call IMAP(a:lhs, a:irhs, 'tex')
			exec 'vnoremap '.vlhs.' '.vrhs
	"	endif

	endif
endfunction " }}}


" Tex_PutEnvironment: calls various specialized functions {{{
" Description: 
"   Based on input argument, it calls various specialized functions.
function! Tex_PutEnvironment(env)
	if exists("s:isvisual") && s:isvisual == "yes"
		let s:isvisual = 'no'
		if a:env == '\['
			return VEnclose('', '', '\[', '\]')
		elseif a:env == '$$'
			return VEnclose('', '', '$$', '$$')
		endif
		return VEnclose('\begin{'.a:env.'}', '\end{'.a:env.'}', '\begin{'.a:env.'}', '\end{'.a:env.'}')
	else
		" The user can define something like 
		" let g:Tex_Env_theorem = "\\begin{theorem}\<CR><++>\<CR>\\end{theorem}"
		" This will effectively over-write the default definition of the
		" theorem environment which uses a \label.
		if exists("b:Tex_Env_{'".a:env."'}")
			return IMAP_PutTextWithMovement(b:Tex_Env_{a:env})
		elseif exists("g:Tex_Env_{'".a:env."'}")
			return IMAP_PutTextWithMovement(g:Tex_Env_{a:env})
		elseif a:env =~ 'equation*\|eqnarray*\|theorem\|lemma\|equation\|eqnarray\|align\*\|align\>\|multline'
			let g:aa = a:env
			return Tex_eqnarray(a:env)
		elseif a:env =~ "enumerate\\|itemize\\|theindex\\|trivlist"
			return Tex_itemize(a:env)
		elseif a:env =~ "table\\|table*"
			return Tex_table(a:env)
		elseif a:env =~ "tabular\\|tabular*\\|array\\|array*"
			return Tex_tabular(a:env)
		elseif a:env =~ "beamerframe"
			return Tex_beamerframe(a:env)
		elseif exists('*Tex_'.a:env)
			exe 'return Tex_'.a:env.'(a:env)'
		elseif a:env == '$$'
			return IMAP_PutTextWithMovement('$$<++>$$')
		elseif a:env == '\['
			return IMAP_PutTextWithMovement("\\[\<CR><++>\<CR>\\]<++>")
		else
			" Look in supported packages if exists template for environment
			" given in the line
			if exists('g:Tex_package_supported') && g:Tex_package_supported != ''
				let i = 1
				while Tex_Strntok(g:Tex_package_supported, ',', i) != ''
					let checkpack = Tex_Strntok(g:Tex_package_supported, ',', i)
					if g:TeX_package_{checkpack} =~ 'e..:'.a:env
						if a:env =~ '*'
							" Don't allow * to be treated as wildcard
							let aenv = substitute(a:env, '*', '\\*', '')
						else
							let aenv = a:env
						endif
						let envcommand = matchstr(g:TeX_package_{checkpack}, '\zse..:'.aenv.'[^,]\{-}\ze,')
						return Tex_ProcessPackageCommand(envcommand)
					endif
					let i = i + 1
				endwhile
			endif
		endif
		" If nothing before us managed to create an environment, then just
		" create a bare-bones environment from the name.
		return IMAP_PutTextWithMovement('\begin{'.a:env."}\<cr><++>\<cr>\\end{".a:env."}<++>")
	endif
endfunction 
" }}}

" Tex_itemize: {{{
function! Tex_itemize(env)
	return IMAP_PutTextWithMovement('\begin{'.a:env."}\<cr>\\item <++>\<cr>\\end{".a:env."}<++>")
endfunction
"}}}

" Tex_description: {{{
function! Tex_description(env)
		return IMAP_PutTextWithMovement(s:description)
endfunction
" }}} 

" Tex_figure: {{{
function! Tex_figure(env)
    "TODO: try to include this later
    "if g:Tex_package_detected =~ '\<graphicx\>'
	  return IMAP_PutTextWithMovement(s:figure_graphicx)
    "endif
endfunction
" }}} 

" Tex_beamerframe: {{{ 
function! Tex_beamerframe(env)
	return IMAP_PutTextWithMovement(s:beamerframe)
endfunction
" }}}

" Tex_table: {{{
function! Tex_table(env)
		return IMAP_PutTextWithMovement(s:table)
endfunction
" }}} 

" Tex_tabular: {{{
function! Tex_tabular(env)
		return IMAP_PutTextWithMovement('\begin{'.a:env.'}[<+position+>]{<+format+>}'."\<cr><++>\<cr>\\end{".a:env.'}<++>')
endfunction
" }}} 

" Tex_eqnarray: {{{
function! Tex_eqnarray(env)
  let arrlabel = '\label{<++>}'."\<cr>"
	return IMAP_PutTextWithMovement('\begin{'.a:env."}\<cr><++>\<cr>".arrlabel."\\end{".a:env."}<++>")
endfunction
" }}} 

" Tex_list: {{{
function! Tex_list(env)
		return IMAP_PutTextWithMovement(s:list)
endfunction
" }}} 

" Tex_document: {{{
function! Tex_document(env)
	return IMAP_PutTextWithMovement(s:document)
endfunction
" }}} 

" Tex_minipage: {{{
function! Tex_minipage(env)
		return IMAP_PutTextWithMovement(s:minipage)
endfunction
" }}} 

" Tex_thebibliography: {{{
function! Tex_thebibliography(env)
		return IMAP_PutTextWithMovement(
			\ "\\begin{thebibliography}\<CR>".
			\ "\\bibitem[<+biblabel+>]{<+bibkey+>} <++>\<CR>".
			\ "<++>\<CR>".
			\ "\\end{thebibliography}<++>")
endfunction

" Tex_SectionMacros: creates section maps and menus {{{
" Description: 
function! <SID>Tex_SectionMacros(lhs, name)

	let vlhs = g:Tex_Leader2.substitute(tolower(a:lhs), '^.', '', '')
	let vrhs = "\<C-\\>\<C-N>:call VEnclose('\\".a:name."{', '}', '', '')<CR>"

"	if g:Tex_SectionMaps && !exists('s:doneOnce')
		exe 'vnoremap '.vlhs.' '.vrhs
		call IMAP (a:lhs, "\\".a:name.'{<++>}<++>', 'tex')
"	endif

endfunction " }}}


" Lists
"
call s:Tex_SpecialMacros('ELI',  'list', s:list)
call s:Tex_SpecialMacros('EDE',   'description', s:description)
call s:Tex_EnvMacros('EEN', 'enumerate')
call s:Tex_EnvMacros('EIT', 'itemize')
call s:Tex_EnvMacros('ETI', 'theindex')
call s:Tex_EnvMacros('ETL', 'trivlist')
"
" Tables {{{
call s:Tex_SpecialMacros('ETE', 'table', s:table)
call s:Tex_EnvMacros('ETG',  'tabbing')
call s:Tex_EnvMacros('', 'table*')
call s:Tex_EnvMacros('',  'table2')
call s:Tex_SpecialMacros('ETR',  'tabular', s:tabular)
call s:Tex_SpecialMacros('', 'tabular*', s:tabular_star)
" }}}
" Math {{{
call s:Tex_EnvMacros('EAR',  'array')
call s:Tex_EnvMacros('EDM',  'displaymath')
call s:Tex_EnvMacros('EEA',  'eqnarray')
call s:Tex_EnvMacros('',     'eqnarray*')
call s:Tex_EnvMacros('EEQ',  'equation')
call s:Tex_EnvMacros('EMA',  'math')
" }}}
" Structure {{{
"call s:Tex_SpecialMacros('EAR', 'array', s:array)
call s:Tex_EnvMacros('EAB',  'abstract')
call s:Tex_EnvMacros('EAP',  'appendix')
call s:Tex_EnvMacros('ECE',  'center')
call s:Tex_EnvMacros('EDO',  'document')
call s:Tex_EnvMacros('EFC',  'filecontents')
call s:Tex_EnvMacros('',     'filecontents*')
call s:Tex_EnvMacros('EFL', 'flushleft')
call s:Tex_EnvMacros('EFR', 'flushright')
call s:Tex_EnvMacros('EQN',  'quotation')
call s:Tex_EnvMacros('EQE',  'quote')
call s:Tex_EnvMacros('ESP',  'sloppypar')
call s:Tex_EnvMacros('ETI',  'theindex')
call s:Tex_EnvMacros('ETP',  'titlepage')
call s:Tex_EnvMacros('EVM',  'verbatim')
call s:Tex_EnvMacros('',     'verbatim*')
call s:Tex_EnvMacros('EVE',  'verse')
call s:Tex_EnvMacros('ETB',  'thebibliography')
call s:Tex_SpecialMacros('',  '-sepstruct0-', ':', 0)
call s:Tex_EnvMacros('ENO',  'note')
call s:Tex_EnvMacros('EOV', 'overlay')
call s:Tex_EnvMacros('ESL', 'slide')
" }}}
" Sections {{{
call s:Tex_SectionMacros('SPA', 'part')
call s:Tex_SectionMacros('SCH', 'chapter')
call s:Tex_SectionMacros('SSE', 'section')
call s:Tex_SectionMacros('SSS', 'subsection')
call s:Tex_SectionMacros('SS2', 'subsubsection')
call s:Tex_SectionMacros('SPG', 'paragraph')
call s:Tex_SectionMacros('SSP', 'subparagraph')
" }}}
" Miscellaneous {{{
call s:Tex_SpecialMacros('',  '-sepenv1-', ' :', 0)
call s:Tex_SpecialMacros('EFI', 'figure', "\<C-r>=Tex_PutEnvironment('figure')\<CR>")
call s:Tex_EnvMacros('', 'figure*')
call s:Tex_EnvMacros('ELR', 'lrbox')
call s:Tex_SpecialMacros('EMP', 'minipage', s:minipage)
call s:Tex_SpecialMacros('EPI', 'picture', s:picture)
call s:Tex_SpecialMacros('BFR', 'beamerframe', s:beamerframe)
" }}}


exe 'source '.fnameescape(s:path.'/helpers.vim')

" vim:fdm=marker:ts=4:sw=4:noet:ff=unix

