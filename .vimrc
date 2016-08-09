"PLUGINS ---------------------------------------------------------------------------------------------------

call pathogen#infect()

"NerdTree

let NERDTreeMouseMode=3
:map Ω : NERDTreeToggle<ENTER>

"ConqueTerm

let g:ConqueTerm_StartMessages = 0
:command Bash execute "ConqueTerm bash"

"Airline
let g:airline_powerline_fonts = 1

 if !exists('g:airline_symbols')
     let g:airline_symbols = {}
     endif

     " unicode symbols
     let g:airline_left_sep = '»'
     let g:airline_left_sep = '▶'
     let g:airline_right_sep = '«'
     let g:airline_right_sep = '◀'
     let g:airline_symbols.linenr = '␊'
     let g:airline_symbols.linenr = '␤'
     let g:airline_symbols.linenr = '¶'
     let g:airline_symbols.branch = '⎇'
     let g:airline_symbols.paste = 'ρ'
     let g:airline_symbols.paste = 'Þ'
     let g:airline_symbols.paste = '∥'
     let g:airline_symbols.whitespace = 'Ξ'

     " airline symbols
     let g:airline_left_sep = ''
     let g:airline_left_alt_sep = ''
     let g:airline_right_sep = ''
     let g:airline_right_alt_sep = ''
     let g:airline_symbols.branch = ''
     let g:airline_symbols.readonly = ''
     let g:airline_symbols.linenr = ''

"     set guifont=DejaVu\ Sans:s12

"NAVIGATION -------------------------------------------------------------------------------------------------

"Splits - Alt HJKL (see .gvimrc to map CMD HJKL in MacVim)

nnoremap ∆ <C-W><C-J> 
nnoremap ˚ <C-W><C-K> 
nnoremap ¬ <C-W><C-L> 
nnoremap ˙ <C-W><C-H> 

"Buffers - Cycling
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

"SAVING -----------------------------------------------------------------------------------------------------

:au FocusLost * :wa
set autowrite
nnoremap zz  :w <CR>

"FORMATTING -------------------------------------------------------------------------------------------------

"JSON

nmap =j :%!python -m json.tool<CR>

"COLORS -----------------------------------------------------------------------------------------------------

"Syntax

syntax on
set showmatch

"Cosmetic

colorscheme industry
set colorcolumn=110

"Font

if has('gui_running')
	  set guifont=Fira\ Code:h12
  endif

"LINES ------------------------------------------------------------------------------------------------------ 

"Numbers

set relativenumber

"Higlight Cursor Line
set cursorline

"Spacing

set linebreak
set breakindent
filetype indent plugin on

"CLOJURE ----------------------------------------------------------------------------------------------------
augroup rainbow_lisp
autocmd!
autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END
au BufReadPost *.boot set syntax=clojure

"OLD COMMENTED ----------------------------------------------------------------------------------------------

"Cosmetic

"filetype plugin indent on
"

"let g:ycm_global_ycm_extra_conf = "~/.dotfiles/Vim/.ycm_extra_conf.py"
":autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
"nnoremap gR gD:%s/<C-R>///gc<left><left><left>

"Syntax

"let g:syntastic_javascript_checkers = ['jshint']
"let g:jshint_highlight_color = 'Red'

"Python

"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
"set textwidth=79
"set expandtab
"set autoindent
"set fileformat=unix


" Enable folding

"set foldmethod=indent
"set foldlevel=99

" Enable folding with the spacebar

"nnoremap <space> za

"highlight ColorColumn ctermbg=darkgray
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_cpplint_exec = 'cpplint'

