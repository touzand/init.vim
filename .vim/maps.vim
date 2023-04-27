let mapleader=" "

" File
map <leader>w :w<CR>
map <leader>q :q<CR>
map <leader>z :wqall<CR>

" Move  a single line up and down
map <leader>k ddkP
map <leader>j ddp

" Run python Code
map <leader>pp :!python %<CR>

" Run node Code
map <leader>nn :!node %<CR>

" Run prettier
map <leader>P :Prettier<CR>

" Fast scroll
map <C-j> 10<C-e>
map <C-k> 10<C-y>

" NerdTree shortcut
nnoremap <leader>e :NERDTreeToggle<CR>

" Shortcuts for split navigation
map <leader>h <C-w>h
map <leader>l <C-w>l
