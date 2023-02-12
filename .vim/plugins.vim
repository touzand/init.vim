 call plug#begin()

" Theme
Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Snippets
Plug 'epilande/vim-es2015-snippets'
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }


" IDE
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'sheerun/vim-polyglot'

" Others
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
Plug 'kqito/vim-easy-replace'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

call plug#end()
