" disable vi compatibility we don't need it
set nocompatible

" set better mouse integration
set mouse=a

" set the correct tab related properties
set tabstop=4
set expandtab
set shiftwidth=4

" set numbering to be visible and use relative numbers
set number relativenumber

" set the clipboard to the system clipboard
set clipboard=unnamedplus

" enable filetype support
filetype on
filetype plugin on " load filetype specific plugins

" disable using a swapfile
set noswapfile

" =========== KEYBINDS  ===========
" do copy with Ctrl+c
vnoremap <C-c> "+y
