" Plugin settings

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

let g:ctrlp_root_markers = ['manage.py']
