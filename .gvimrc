if has("gui_macvim")
        "This is in the system menu, disable through system prefs app
        nnoremap <D-h> <C-W><C-H>
        "These have no gui mapping
        nnoremap <D-j> <C-W><C-J>
        nnoremap <D-k> <C-W><C-K>
        "disable the GUI mapping for this one
   macmenu &Tools.List\ Errors key=<nop>
        nnoremap <D-l> <C-W><C-L>
    endif
