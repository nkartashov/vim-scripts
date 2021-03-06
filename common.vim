" Common settings
" Disable bell
set novisualbell
set noerrorbells

set expandtab " tabs = spaces
set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces in tab when editing
set smartindent " smart indentation

" Same for shifting
set shiftwidth=2

" Show line numbers
set number
" Don't select line numbers while selecting with mouse
set mouse=a
" Show last command
set showcmd

" Searching
set showmatch
set incsearch " Highlight search matches when typing
set hlsearch " Highlight found search results
set ignorecase " Ignore case when searching
set smartcase " Until you type in camelCase

" Change dir to the current file dir
" set autochdir
" Same as autochdir but works better with plugins
autocmd BufEnter * silent! lcd %:p:h

" Highlight current line
" disabled for performance
" set cursorline
" set lazyredraw
" Highlight a line with cursor and 80th, 120th columns
set colorcolumn=80,120

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
    if has('nvim')
      " Neovim decided to use A- for Alt :sigh:
      nnoremap <A-f> gt
      nnoremap <A-b> gT
    else
      nnoremap <Esc>f gt
      nnoremap <ESC>b gT
    endif
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

" Whitespace removal
fun! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfun
command! TrimWhitespace call TrimWhitespace()

" Copy to os clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" Paste like normal people (without replacing the pasted text with deleted)
xnoremap p "_dP

" Delete the same way
nnoremap d "_d
nnoremap x "_x

" Autocommands
" Automatically delete whitespace character at the end of the string
autocmd FileType c,cpp,java,js,hs,py,rb,coffee autocmd BufRead,BufWritePre,FileWritePre <buffer> :call TrimWhitespace()

" Navigate vsplits more easily
nnoremap <C-Left> <C-W><C-H>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
