call plug#begin()

" Theme color
Plug 'morhetz/gruvbox'

" IDE 
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'alvan/vim-closetag'
Plug 'kqito/vim-easy-replace'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'HerringtonDarkholme/yats.vim'

" Git flow
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'samoshkin/vim-mergetool'

" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Prettier
Plug 'prabirshrestha/vim-lsp'
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'mattn/vim-lsp-settings'

" Really necessary ?
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/goyo.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

" Nvim for python development
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'ncm2/ncm2'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

""""""""""""""""""""""""""""

Plug 'ap/vim-css-color'

call plug#end()
