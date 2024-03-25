syntax on

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
set cmdheight=2      
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

filetype on          
filetype plugin on  
filetype indent on

so ~/.config/nvim/.vim/maps.vim
so ~/.config/nvim/.vim/plugins.vim
so ~/.config/nvim/.vim/config.vim
so ~/.config/nvim/.vim/coc.vim
