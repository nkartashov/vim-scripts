" List of Vundle + plugins
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

" Tagbar & tags for class view
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

" Tags for CoffeeScript
Plugin 'lukaszkorecki/CoffeeTags'

" Git branches in Airline
Plugin 'tpope/vim-fugitive'

" Added/deleted lines near line numbers
Plugin 'airblade/vim-gitgutter'

" Fancy start page
Plugin 'mhinz/vim-startify'

" Async commands for completion plugins
Plugin 'Shougo/vimproc.vim'

" Syntax checking
Plugin 'vim-syntastic/syntastic'

" Completion
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplete.vim'

" Fast opening files
" Plugin 'wincent/Command-T'
Plugin 'ctrlpvim/ctrlp.vim'
" Fast path matching with Ctrl-P
Plugin 'nixprime/cpsm'

" Haskell support
Plugin 'eagletmt/neco-ghc'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'itchyny/vim-haskell-indent'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
