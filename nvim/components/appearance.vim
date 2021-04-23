
" Airline customization
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
  let g:airline_powerline_fonts = 1
endif
let g:airline_symbols.space = "\ua0"

set guifont=Literation\ Mono\ for\ Powerline\ 13
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='jellybeans'

let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#right_sep = ' '
let g:airline_left_sep=''
let g:airline_right_sep=''

"colorscheme gruvbox
set cot=menu,menuone
colorscheme jellybeans
let g:molokai_original = 1
set t_Co=256
set cursorline

let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
