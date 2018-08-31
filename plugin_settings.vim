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
" Just show the filename (no path) in the tab
let g:airline#extensions#tabline#fnamemod = ':t'

" Syntastic default
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_python_python_exec = 'python3'
" let g:syntastic_python_checkers = []
" let g:ale_linters = {
"       \ 'python': ['flake8'],
"       \ }
" let g:ale_python_flake8_options='--ignore=E225,E402,E501'
" let g:ale_completion_enabled = 1

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" " Syntastic checkers
" let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_ruby_checkers = ['rubocop']
"
call neomake#configure#automake('nw', 750)

" Enable neocomplete
" let g:neocomplete#enable_at_startup = 1

" Better python completion via jedi
let g:completor_python_binary = '/Users/nikita.kartashov/envs/py3.6/bin/python'

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

" Support scrolling in ctrlP window
let g:ctrlp_match_window = 'results:100'

" Faster searching for paths
" let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" Open tagbar on F2
nmap <F2> :TagbarToggle<CR>

" Easytags
let g:easytags_async = 1
let g:easytags_always_enabled = 1
" let g:easytags_opts = ['-R', '--python-kinds=-i'] " ignore import statements and variables

" Run vim-gitgutter asynchronously
let g:gitgutter_async = 1

" Ack.vim
" Use Ag instead of ack
let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
