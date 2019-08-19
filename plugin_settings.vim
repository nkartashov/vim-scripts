" Plugin settings

let g:python3_host_prog = $WORKON_HOME . '/python37-nvim/bin/python3'

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

" Get type of the Haskell expression by ctrl-]
autocmd FileType haskell nnoremap <buffer> <C-]> :GhcModType<CR>

" Ctrl-P
if executable('ag')
  " Use Ag and respect .gitignore
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
    \ --ignore .git
    \ --ignore .svn
    \ --ignore .hg
    \ --ignore .DS_Store
    \ --ignore "**/*.pyc"
    \ -g ""'

  " Don't cache
  let g:ctrlp_use_caching = 0
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

" YouCompleteMe
" Don't ask to load ycm_extra_conf.py
let g:ycm_confirm_extra_conf = 0

" Use clang instead of clangd lsp
let g:ycm_use_clangd = 0

" Close compeletion menu after use
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" GoTo on Ctrl-]
nnoremap <C-]> :YcmCompleter GoTo<CR>

let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

" GoTo opens in a new tab if it's a different unopened file
let g:ycm_goto_buffer_command = 'new-or-existing-tab'


" Ultisnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<C-tab>'
