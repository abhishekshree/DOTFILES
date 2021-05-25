call plug#begin('~/.vim/plugged')

    Plug 'honza/vim-snippets'
    Plug 'ervandew/supertab'
    Plug 'morhetz/gruvbox'
    Plug 'jremmen/vim-ripgrep'
    Plug 'dense-analysis/ale'
    Plug 'justinmk/vim-syntax-extra'
    Plug 'tpope/vim-fugitive'
    Plug 'https://github.com/ycm-core/YouCompleteMe.git'
    Plug 'preservim/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'jiangmiao/auto-pairs'
    Plug 'sirver/ultisnips'
    Plug 'vim-scripts/closetag.vim'
    Plug 'alvan/vim-closetag'
    Plug 'Valloric/MatchTagAlways'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    " Go
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } 

    " React
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
    Plug 'mattn/emmet-vim'
    Plug 'mxw/vim-jsx'
    Plug 'mlaursen/vim-react-snippets'

    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'ajh17/Spacegray.vim'

    " Colorschemes
    Plug 'tomasr/molokai'
    Plug 'nanotech/jellybeans.vim'
    Plug 'Pychimp/vim-luna'
    Plug 'altercation/vim-colors-solarized'
    Plug 'rhysd/vim-clang-format' "{{{
    let g:clang_format#style_options = {
                \ "AccessModifierOffset" : -4,
                \ "IndentWidth" : 4,
                \ "TabWidth" : 4,
                \ "AllowShortIfStatementsOnASingleLine" : "false",
                \ "AllowShortBlocksOnASingleLine" : "false",
                \ "AllowShortLoopsOnASingleLine" : "false",
                \ "AlwaysBreakTemplateDeclarations" : "true",
                \ "PointerAlignment" : "Right",
                \ "DerivePointerAlignment" : "false",
                \ "ColumnLimit" : 75,
                \ "Standard" : "C++11" }
    "}}}
call plug#end()


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
