call pathogen#infect()

let g:syntastic_javascript_checkers = ['jshint']
let g:jshint_highlight_color = 'Red'

:map Ω : NERDTreeToggle<ENTER>
:au FocusLost * :wa
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>
nnoremap gR gD:%s/<C-R>///gc<left><left><left>
nmap =j :%!python -m json.tool<CR>

colorscheme distinguished
filetype plugin indent on
syntax on
set relativenumber
set autowrite

set relativenumber
set showmatch
set linebreak
set breakindent
