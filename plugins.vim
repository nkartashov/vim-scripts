" List of Vundle + plugins
set nocompatible              " be iMproved, required
filetype off                  " required

" " set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

" Solarized
Plug 'altercation/vim-colors-solarized'

" Commenting on gc
Plug 'tpope/vim-commentary'

" Change surrounding characters
Plug 'tpope/vim-surround'

" Better % movement
Plugin 'andymass/vim-matchup'

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
" Plug 'wincent/Command-T'
Plug 'ctrlpvim/ctrlp.vim'
" Fast path matching with Ctrl-P
Plug 'nixprime/cpsm'
Plug 'FelikZ/ctrlp-py-matcher'

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
Plugin 'ibab/vim-snakemake'

" Highlighting for Jinja
Bundle "lepture/vim-jinja"

" All of your Plugins must be added before the following line
" call vundle#end()            " required
" Initialize Plug system
call plug#end()
" filetype plugin indent on    " required
" filetype plugin on
