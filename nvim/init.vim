runtime ./components/settings.vim

filetype plugin on
let mapleader = " "

runtime ./components/plugins.vim

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

runtime ./components/appearance.vim
runtime ./components/keys.vim