let mapleader=" "

" Git
map <leader>G :vertical topleft G<CR>

" Git log list
map <leader>L :vertical topleft G log<CR>

" Merge resolve process
map <leader>mr :Gvdiffsplit<CR>
map <leader>mt :MergetoolToggle<CR>
map <leader>tb :MergetoolToggleLayout mr,b<CR>

"nmap <expr> <C-Up> &diff? '<Plug>(MergetoolDiffExchangeUp)' : '<C-Up>'

" Diff merge tool handler
"nmap <C-h> :MergetoolDiffExchangeLeft <CR>
"nmap <c-l> :MergetoolDiffExchangeRight<cr>
nmap <expr> <C-h> &diff? '<Plug>(MergetoolDiffExchangeLeft)' : '<C-Left>'
nmap <expr> <C-l> &diff? '<Plug>(MergetoolDiffExchangeRight)' : '<C-Right>'
nmap <expr> <C-j> &diff? '<Plug>(MergetoolDiffExchangeDown)' : '<C-Down>'

" Show documentation of a variable
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" File control
map <leader>w :w<CR>
map <leader>q :q<CR>
map <leader>z :wqall<CR>

" Fast scroll
noremap J 10<C-e>
noremap K 10<C-y>

" Window resize
nnoremap <leader>> 10<C-w>>
nnoremap <leader>< 10<C-w><

" NerdTree shortcut
nnoremap <leader>e :NvimTreeToggle<CR>

" Shortcuts for split navigation
map <leader>k <C-w>k
map <leader>h <C-w>h
map <leader>l <C-w>l
map <leader>j <C-w>j

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

" Run current file by format
map <leader>pp :!python3 %<CR>
map <leader>nn :!node %<CR>

" Run prettier
"map <leader>P :Prettier<CR>
map <leader>P : ! prettier % --write<CR><CR>

