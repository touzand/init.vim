call plug#begin()

Plug 'HerringtonDarkholme/yats.vim'
Plug 'Pocco81/true-zen.nvim'
Plug 'preservim/nerdtree'
"Plug 'skywind3000/vim-keysound'
Plug 'ThePrimeagen/vim-be-good'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'dense-analysis/ale'

"Theme color
Plug 'morhetz/gruvbox'

" IDE 
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'alvan/vim-closetag'
Plug 'kqito/vim-easy-replace'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'
Plug 'styled-components/vim-styled-components'

" Git flow
Plug 'tpope/vim-fugitive'
Plug 'samoshkin/vim-mergetool'

" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Format
Plug 'prabirshrestha/vim-lsp'
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

Plug 'nvim-lualine/lualine.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'


Plug 'ap/vim-css-color'



Plug 'kabouzeid/nvim-lspinstall'
"Plug 'luckasRanarison/tailwind-tools.nvim'
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
Plug 'samodostal/image.nvim'
Plug 'nvim-lua/plenary.nvim'

call plug#end()
