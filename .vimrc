set nocompatible
filetype off
set wildmenu
set path+=**
set number
set cursorline
set clipboard=unnamedplus
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomasiser/vim-code-dark'
call vundle#end()            " required
filetype plugin indent on    " required

" Call after the plugin initiation
syntax enable
colorscheme codedark
let NERDTreeDirArrows=0
let g:nerdtree_tabs_open_on_console_startup=1

