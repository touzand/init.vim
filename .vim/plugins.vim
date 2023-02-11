  call plug#begin()
" Theme
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'

" Auto-complete
"Plug 'davidhalter/jedi-vim'

" Snippets
Plug 'epilande/vim-es2015-snippets'
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

'aksjdlakjds'

aklsdjklajsd


" IDE
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
"Plug 'ap/vim-buftabline'
"Plug 'tpope/vim-repeat'
Plug 'sheerun/vim-polyglot'

" Others
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
Plug 'kqito/vim-easy-replace'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
call plug#end()
