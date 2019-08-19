set nocompatible              " be iMproved, required
filetype off                  " required
call plug#begin('~/.vim/plugged')

" Solarized
Plug 'altercation/vim-colors-solarized'

" Commenting on gc
Plug 'tpope/vim-commentary'

" Change surrounding characters
Plug 'tpope/vim-surround'

" Better % movement
Plug 'andymass/vim-matchup'

" Display marks near line numbers 
Plug 'kshenoy/vim-signature'

" Languages
" Haml, Sass, SCSS
Plug 'tpope/vim-haml'

" Haskell support
Plug 'eagletmt/neco-ghc'
Plug 'eagletmt/ghcmod-vim'
Plug 'itchyny/vim-haskell-indent'

" Js
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'

" GraphQL
Plug 'jparise/vim-graphql'

" Highlighting for nginx
Plug 'chr4/nginx.vim'

" Highlighting for Snakemake
Plug 'ibab/vim-snakemake'

" Highlighting for Jinja
Plug 'lepture/vim-jinja'

" Cofeescript
Plug 'kchmck/vim-coffee-script'

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" Airline bottom line & tab line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git branches in Airline
Plug 'tpope/vim-fugitive'

" Added/deleted lines near line numbers
Plug 'airblade/vim-gitgutter'

" Fancy start page
Plug 'mhinz/vim-startify'

" Async commands for completion plugins
Plug 'Shougo/vimproc.vim'

" Completion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang' }

" Snippets
Plug 'SirVer/ultisnips'
" Snippets for different languages
Plug 'honza/vim-snippets'

" Fast opening files
Plug 'ctrlpvim/ctrlp.vim'

" Searching with Ag
Plug 'mileszs/ack.vim'

" Initialize Plug system
call plug#end()
