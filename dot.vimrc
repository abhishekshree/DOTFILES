syntax on
set virtualedit+=onemore
set noerrorbells
set signcolumn=yes
set noswapfile
set nobackup
set scrolloff=8
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nu rnu
set nowrap
set ignorecase
set smartcase
set noswapfile
set nobackup
set incsearch
set hidden
set wildmenu 
set showmatch
set smarttab
set cindent
set novisualbell
set background=dark
set ruler
set title 
set wrap
set autoindent
set copyindent
set smartindent
set cindent


let mapleader = " "

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
              \ "AlwaysBreakTemplateDeclarations" : "true",
              \ "PointerAlignment" : "Right",
              \ "DerivePointerAlignment" : "false",
              \ "ColumnLimit" : 75,
              \ "Standard" : "C++11" }
  "}}}
call plug#end()

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

filetype plugin on

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


"colorscheme gruvbox
set cot=menu,menuone
colorscheme jellybeans
let g:molokai_original = 1
set t_Co=256
set cursorline

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


"ino <BS> <BS><C-r>=getline('.')[col('.')-3:col('.')-2]=~#'\k\k'?!pumvisible()?"\<lt>C-n>\<lt>C-p>":'':pumvisible()?"\<lt>C-y>":''<CR>
"ino <CR> <C-r>=pumvisible()?"\<lt>C-y>":""<CR><CR>
"ino <Tab> <C-r>=pumvisible()?"\<lt>C-n>":"\<lt>Tab>"<CR>
"ino <S-Tab> <C-r>=pumvisible()?"\<lt>C-p>":"\<lt>S-Tab>"<CR>


nnoremap <leader>n :NERDTreeToggle %<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

imap qq <C-y>, 
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr> 

" Nerd Commenter
nmap // <leader>c<space>
vmap // <leader>cs

nmap <silent> <leader>e <Plug>(ale_next_wrap)
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
let g:ale_python_flake8_options = '--max-line-length=100'
let g:ale_linters = {
  \ 'python': [] ,
  \ }


" so you don't have to hold down shift to get into command mode
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Heaven
inoremap jj <Esc>

vmap <Space>p "+p
vmap <Space>p "+P
nmap <Space>p "+p
nmap <Space>p "+P
vmap <Space>y "+yy
vmap <Space>d "+dd
nmap <Space>y "+yy
nmap <Space>d "+dd

let g:javascript_plugin_jsdoc = 1
let g:closetag_filenames = '*.html,*.jsx,*.js'

:nnoremap <silent> <c-Up> :resize -1<CR>
:nnoremap <silent> <c-Down> :resize +1<CR>
:nnoremap <silent> <c-left> :vertical resize -1<CR>
:nnoremap <silent> <c-right> :vertical resize +1<CR>
:nnoremap <silent> <leader>v :vsplit<CR>
:nnoremap <silent> <leader>s :split<CR>

" fzf 
nnoremap <C-p> :Files<Cr>
