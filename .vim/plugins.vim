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
"Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'

" Autocompletion vim-lsp
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'


" Others
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'branch': 'release/0.x'
  \ }
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

" Really necessary ?
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'


call plug#end()
