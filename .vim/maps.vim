let mapleader=" "



" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)



" Source Vim configuration file and install plugins
nnoremap <silent><leader>1 :source ~/.config/nvim/init.vim \| :PlugInstall<CR>



:inoremap <expr> <cr> pumvisible() ? '<c-y>' : '<cr>'

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

" list buffers and jump to a chosen one
nnoremap <Leader>b :ls<CR>:b<Space>
