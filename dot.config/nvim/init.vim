runtime ./components/settings.vim

filetype plugin on
let mapleader = " "

runtime ./components/plugins.vim

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]


let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

if has("nvim")
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if has('nvim')
  augroup term
    autocmd!
    autocmd BufWinEnter,WinEnter term://* setlocal nonumber norelativenumber
  augroup END
endif

nmap <silent> <leader>e <Plug>(ale_next_wrap)

let g:javascript_plugin_jsdoc = 1
let g:closetag_filenames = '*.html,*.jsx,*.js'

runtime ./components/appearance.vim

runtime ./components/keys.vim
