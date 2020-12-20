colorscheme simple-dark
let g:coc_disable_startup_warning = 1

" adds line numbers
set number

" use polygot
call plug#begin()

Plug 'sheerun/vim-polyglot'

call plug#end()

" use coc.nvim
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

call plug#end()

