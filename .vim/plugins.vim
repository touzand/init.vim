" Pluggins
call plug#begin()
" Theme
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'

" Snippets
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'honza/vim-snippets'

" IDE
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'


" Others
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-fugitive'
Plug 'kqito/vim-easy-replace'
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
"Plug 'SirVer/ultisnips'
call plug#end()

