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

" Haml, Sass, SCSS
Plug 'tpope/vim-haml'

" Cofeescript
Plug 'kchmck/vim-coffee-script'

" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" Airline bottom line & tab line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tagbar & tags for class view
Plug 'majutsushi/tagbar'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-easytags'

" Tags for CoffeeScript
Plug 'lukaszkorecki/CoffeeTags'

" Git branches in Airline
Plug 'tpope/vim-fugitive'

" Added/deleted lines near line numbers
Plug 'airblade/vim-gitgutter'

" Fancy start page
Plug 'mhinz/vim-startify'

" Async commands for completion plugins
Plug 'Shougo/vimproc.vim'

" Syntax checking
" Plug 'vim-syntastic/syntastic'
" Plug 'w0rp/ale'
" Plug 'maralla/validator.vim'
Plug 'neomake/neomake'

" Completion
" Plug 'Valloric/YouCompleteMe'
" Plug 'Shougo/neocomplete.vim'
Plug 'maralla/completor.vim'

" Fast opening files
Plug 'ctrlpvim/ctrlp.vim'

" Searching with Ag
Plug 'mileszs/ack.vim'

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

" Initialize Plug system
call plug#end()
