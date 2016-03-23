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
"Folding options
set foldmethod=indent
set foldlevel=99
"utf-8 encoding
set encoding=utf-8

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

"Plugin for code-completion
"Plugin 'Valloric/YouCompleteMe'
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"Plugin for python completion
Plugin 'davidhalter/jedi-vim'

"Dependencies for vim-notes
Plugin 'xolox/vim-misc'

"Plugin that allows vim to become an awesome note manager
Plugin 'xolox/vim-notes'

"Plugin that highlights css colors
Plugin 'ap/vim-css-color'

"Plugin for python folding
Plugin 'tmhedberg/SimpylFold'

"Plugin for python indentation
Plugin 'vim-scripts/indentpython.vim'

"Plugin for easier xml editing
Plugin 'sukima/xmledit'

"Plugin to add brackets around highlighted text
Plugin 'tpope/vim-surround'

call vundle#end()            " required
filetype plugin indent on    " required

"Better theme imo
colorscheme slate

""""Key mappings""""
"Better <ESC> shortcut
inoremap jk <ESC>
"Better folding key
nnoremap <space> za
"Paranthesises, braces, brackets completion when pressing enter
inoremap {<cr> {<cr>}<c-o>O<tab>
inoremap [<cr> [<cr>]<c-o>O<tab>
inoremap (<cr> (<cr>)<c-o>O<tab>

"Better split location than default
set splitbelow
set splitright
"Faster split moving
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" <CTRL-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

"Language specific config

"Python
au BufNewFile,BufRead *.py:
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

