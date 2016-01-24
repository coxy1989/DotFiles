if has("gui_macvim")
        "This is in the system menu, disable through system prefs app
        nnoremap <D-h> :w <CR> <C-W><C-H> 
        "These have no gui mapping
        nnoremap <D-j> :w <CR> <C-W><C-J> 
	nnoremap <D-k> :w <CR> <C-W><C-K> 
        "disable the GUI mapping for this one
   macmenu &Tools.List\ Errors key=<nop>
        nnoremap <D-l> :w <CR> <C-W><C-L> 
    endif
