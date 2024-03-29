let mapleader=" "

" Git flow config
map <leader>G :vertical topleft G<CR>
map <leader>dg :diffget<CR>
map <leader>dp :diffput<CR>
map <leader>L :vertical topleft G log<CR>

" Gvdiffsplit config
map <leader>mr :Gvdiffsplit<CR>

" Show documentation of a variable
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" File
map <leader>w :w<CR>
map <leader>q :q<CR>
map <leader>z :wqall<CR>

" Move  a single line up and down
map <leader>kk ddkP
map <leader>jj ddp

" Run python Code
map <leader>pp :!python3 %<CR>

" Run node Code
map <leader>nn :!node %<CR>

" Run prettier
map <leader>P :Prettier<CR>

" Fast scroll
map <C-j> 10<C-e>
map <C-k> 10<C-y>

" Window resize
nnoremap <leader>> 10<C-w>>
nnoremap <leader>< 10<C-w><

" NerdTree shortcut
"nnoremap <leader>e :NERDTreeToggle<CR>
"nnoremap <leader>e :Files %:p:h<CR>
"nnoremap <leader>E :GFiles<CR>
nnoremap <leader>e :NvimTreeToggle<CR>

" FZF --multi --layout=reverse-list --info=inline --pointer=→  --marker=♡

" Shortcuts for split navigation
map <leader>h <C-w>h
map <leader>l <C-w>l

" FZF mapping
nnoremap <leader>gf :GFiles<Cr>
nnoremap <leader>rf :Rg<Cr>
nnoremap <leader>bf :Buffers<CR>

" Source Vim configuration file and install plugins
nnoremap <silent><leader>1 :source ~/.config/nvim/init.vim \| :PlugInstall<CR>
nnoremap <leader>so :source %<CR>

" Asyncomplete.vim config
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
inoremap <expr> <cr> pumvisible() ? '<c-y>' : '<cr>'
