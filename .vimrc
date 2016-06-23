execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
let mapleader = "\<Space>"


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_theme = 'luna'

set number
set relativenumber

autocm StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
