syntax on

"scriptencoding utf-8
packloadall
set nu
set relativenumber
set relativenumber          
set tabstop=2        
set softtabstop=2    
set shiftwidth=2    
set expandtab        
set smarttab        
set smartindent      
set nosmartindent      
set noautoindent
set formatoptions-=t
set backspace=indent,eol,start
set hidden           
set incsearch        
set ignorecase       
set smartcase        
set scrolloff=8      
set signcolumn=yes   
set cmdheight=1     
set updatetime=100
set encoding=utf-8
set nobackup        
set nowritebackup  
set splitright       
set splitbelow      
set autoread       
set cursorline
set mouse=a       
set path+=**
set langmenu=en_US.UTF-8
set nocompatible
"set completeopt+=menuone
"set completeopt-=menu completeopt+=menuone
"set enc=utf-8
"set fenc=utf-8
"set fencs=iso-2022-jp,euc-jp,cp932

filetype on          
filetype plugin on  
filetype indent on

so ~/.config/nvim/.vim/maps.vim
so ~/.config/nvim/.vim/plugins.vim
so ~/.config/nvim/.vim/config.vim
so ~/.config/nvim/.vim/coc.vim
so ~/.config/nvim/MyInit.lua
