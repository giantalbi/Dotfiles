set nocompatible
filetype off
set wildmenu
set path+=**
set number

set clipboard=unnamedplus
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'marcopaganini/termschool-vim-theme'
call vundle#end()            " required
filetype plugin indent on    " required

" Call after the plugin initiation
syntax enable
colorscheme Monokai
let NERDTreeDirArrows=0
