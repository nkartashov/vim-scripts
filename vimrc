set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Solarized
Plugin 'altercation/vim-colors-solarized'

" Commenting on gc
Plugin 'tpope/vim-commentary'

" Display marks near line numbers 
Plugin 'kshenoy/vim-signature'

" Haml, Sass, SCSS
Plugin 'tpope/vim-haml'

" Cofeescript
Plugin 'kchmck/vim-coffee-script'

" Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" Airline bottom line & tab line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Git branches in Airline
Plugin 'tpope/vim-fugitive'

" Added/deleted lines near line numbers
Plugin 'airblade/vim-gitgutter'

" Async commands for completion plugins
Plugin 'Shougo/vimproc.vim'

" " Syntax checking
Plugin 'vim-syntastic/syntastic'

" Completion
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplete.vim'

" Haskell support
Plugin 'eagletmt/neco-ghc'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'itchyny/vim-haskell-indent'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

" tab = spaces
set expandtab
set tabstop=2
set softtabstop=2

" Same for shifting
set shiftwidth=2

" Show line numbers
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

" Show lines above and below the cursor line
set scrolloff=7

" Syntax & colours
syntax enable
set t_Co=256
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

" Suggest files for tab new completion
set wildmode=longest,list,full
set wildmenu

" Make searches magical
nnoremap / /\v
vnoremap / /\v

" stop accidentally opening help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Autocommands
"
" Automatically delete whitespace character at the end of the string
autocmd FileType c,cpp,java,js,hs,py,rb autocmd BufRead,BufWritePre,FileWritePre <buffer> %s/[\r \t]\+$//

" Plugins

" Show Airline
set laststatus=2
" Display Airline tabline
let g:airline#extensions#tabline#enabled = 1


" Syntastic default
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" " Syntastic checkers
" let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_ruby_checkers = ['rubocop']

" Enable neocomplete
let g:neocomplete#enable_at_startup = 1

" Get type of the Haskell expression by ctrl-]
autocmd FileType haskell nnoremap <buffer> <C-]> :GhcModType<CR>
