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

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

nmap <silent> <leader>e <Plug>(ale_next_wrap)

let g:javascript_plugin_jsdoc = 1
let g:closetag_filenames = '*.html,*.jsx,*.js'
