" Common settings
" Disable bell
set visualbell
set noerrorbells

" tabs = spaces
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

" Move from tab to tab on alt + arrow
if has("unix")
  nnoremap <A-Right> gt
  nnoremap <A-Left> gT
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    " Mac has rebound keys for word movements for iterm, so work around that
    nnoremap <Esc>f gt
    nnoremap <ESC>b gT
  endif
endif

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
