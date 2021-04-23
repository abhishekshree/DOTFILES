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

" so you don't have to hold down shift to get into command mode
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Heaven
inoremap jj <Esc>

" Pasting
vmap <Space>p "+p
vmap <Space>p "+P
nmap <Space>p "+p
nmap <Space>p "+P
vmap <Space>y "+yy
vmap <Space>d "+dd
nmap <Space>y "+yy
nmap <Space>d "+dd

" tabs
:nnoremap <silent> <A-t> :$tabnew<CR>

"splits
:nnoremap <silent> <c-Up> :resize -1<CR>
:nnoremap <silent> <c-Down> :resize +1<CR>
:nnoremap <silent> <c-left> :vertical resize -1<CR>
:nnoremap <silent> <c-right> :vertical resize +1<CR>
:nnoremap <silent> <leader>v :vsplit<CR>
:nnoremap <silent> <leader>s :split<CR>
