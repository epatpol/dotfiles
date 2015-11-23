set nocompatible              " be iMproved, required
filetype plugin indent on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
execute pathogen#infect()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'ntpeters/vim-better-whitespace'

set guioptions+=a
set clipboard=unnamedplus
syntax on
set hlsearch
set incsearch
set number
set autoindent
set mouse=a
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab


"testing those features atm"
inoremap jk <ESC>
let mapleader = "\<Space>"
set encoding=utf-8
