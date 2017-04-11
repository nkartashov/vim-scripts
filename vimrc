set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Solarized
Plugin 'altercation/vim-colors-solarized.git'

" Commenting on gc
Plugin 'tpope/vim-commentary.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

" tab = 2 spaces
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set number

" Searching
set showmatch
set incsearch
set ignorecase
set smartcase
set hlsearch

" Change dir to the current file dir
set autochdir

" Highlight a line with cursor and 80th column
set cursorline
set colorcolumn=80

" Syntax & colours
syntax enable
set background=dark
colorscheme solarized

" Move from tab to tab on F3/F4
nnoremap <F3> gT
nnoremap <F4> gt

" Fix backspace in insert mode
set backspace=indent,eol,start

" Put swapfiles away
set nobackup
set noswapfile

" Don't wrap lines
set nowrap

" Make searches magical
nnoremap / /\v
vnoremap / /\v

" stop accidentally opening help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Autocommands

" Automatically delete trailing DOS-returns and whitespace on file open and
" write.
autocmd FileType c,cpp,java,js,hs,py,rb autocmd BufRead,BufWritePre,FileWritePre <buffer> %s/[\r \t]\+$//
