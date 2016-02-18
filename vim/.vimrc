"Vim configuration file

"Gui options : +a for autoselect
set guioptions+=a
"Acces the unnamed register when yanking
set clipboard=unnamedplus
"Enable syntax highlighting
syntax on
"Highlight matches when searching
set hlsearch
"Enable incremental search
set incsearch
"Ignore case when searching
set ic
"Display line numbers
set number
"Indents when starting a new line
set autoindent
"Enable mouse for normal/visual/insert/cli/help editing modes
set mouse=a
"Tab options
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"Highlight the first character that exceed column 80
highlight ColorColumn ctermbg=magenta "set to whatever you like
call matchadd('ColorColumn', '\%81v', 100) "set column nr

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Insert Vundle plugins after this comment
"Plugin to manage the vim plugins
Plugin 'VundleVim/Vundle.vim'
"Plugin to highlight whitespaces and fix them automatically"
Plugin 'ntpeters/vim-better-whitespace'
"Plugin that integrates git into the editor
Plugin 'airblade/vim-gitgutter'
"Plugin that integrates a file explorer into vim
Plugin 'scrooloose/nerdTree'
"Plugin that allows tab completion inside vim
Plugin 'ervandew/supertab'
"Dependencies for vim-notes
Plugin 'xolox/vim-misc'
"Plugin that allows vim to become an awesome note manager
Plugin 'xolox/vim-notes'
"Plugin that highlights css colors
Plugin 'ap/vim-css-color'

call vundle#end()            " required
filetype plugin indent on    " required

"Better theme imo
colorscheme slate
"Better <ESC> shortcut
inoremap jk <ESC>
"Better split location than default
set splitbelow
set splitright
"Faster split moving
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
