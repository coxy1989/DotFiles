"Plugins

call pathogen#infect()
let NERDTreeMouseMode=3

"Syntax

let g:syntastic_javascript_checkers = ['jshint']
let g:jshint_highlight_color = 'Red'


"Python

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix


"Navigation

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:ycm_global_ycm_extra_conf = "~/.dotfiles/Vim/.ycm_extra_conf.py"
:autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

:map Ω : NERDTreeToggle<ENTER>
:au FocusLost * :wa
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" Enable folding

set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar

nnoremap <space> za

"Parsing

nmap =j :%!python -m json.tool<CR>

"Cosmetic

filetype plugin indent on
syntax on
set relativenumber
set autowrite
set showmatch
set linebreak
set breakindent
colorscheme evening
set colorcolumn=110

highlight ColorColumn ctermbg=darkgray
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_cpplint_exec = 'cpplint'

