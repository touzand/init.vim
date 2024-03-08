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

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" Really necessary ?
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/goyo.vim'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }



""""""""""""""""""""""""""""
Plug 'ap/vim-css-color'

call plug#end()
