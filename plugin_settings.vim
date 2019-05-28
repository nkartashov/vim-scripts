" Plugin settings

let g:python3_host_prog = '/Users/nkartashov/envs/python37-nvim/bin/python3'

" Show Airline
set laststatus=2
" Display Airline tabline
let g:airline#extensions#tabline#enabled = 1
" Don't waste space for files on the right
let g:airline#extensions#tabline#show_tab_type = 0
" Don't waste space for numbers
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_nr = 0
" Set theme to Solarized
let g:airline_theme='solarized'
" Just show the filename (no path) in the tab
let g:airline#extensions#tabline#fnamemod = ':t'

" Deoplete
let g:deoplete#enable_at_startup = 1

call neomake#configure#automake('nw', 750)

" Get type of the Haskell expression by ctrl-]
autocmd FileType haskell nnoremap <buffer> <C-]> :GhcModType<CR>

" Ctrl-P
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Always open new files in a new tab using CtrlP
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" Don't search above directories with this filename
let g:ctrlp_root_markers = ['manage.py']

" Support scrolling in ctrlP window
let g:ctrlp_match_window = 'results:100'

" Run vim-gitgutter asynchronously
let g:gitgutter_async = 1

" Ack.vim
" Use Ag instead of ack
let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
