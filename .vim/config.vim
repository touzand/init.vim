autocmd BufWritePre *.ts,*.tsx CocCommand tsserver.executeFormat

" Init config for (FZF)
let g:fzf_vim = {}
let g:fzf_layout = { 'window': { 'options':'--reverse','width': 0.7, 'height': 0.7, 'relative':v:false} }

" Possible values :'local' ( default ), 'remote' , 'base' (MergeTool)
let g:mergetool_prefer_revision = 'local'

" ( m ) : for working of tree version merged file (MergeTool)
" ( r ) : for 'remote' revision (MergeTool)
" ( l ) : for 'local' revision (MergeTool)
let g:mergetool_layout = 'mr'

 "CoC extensions
let g:coc_global_extensions = ['coc-tsserver']

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" This makes the time before it updates your hover faster, other
set updatetime=100

" This makes it so that you can click a variable and a float window pops up
autocmd CursorHold * silent call CocActionAsync('doHover')

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTreeToggle | endif


" Auto popup complete disabled
let g:asyncomplete_auto_popup = 1
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"Lsp diagnostics disabled
let g:lsp_diagnostics_enabled = 0

" autocmd 
    function! HighlightWordUnderCursor()
        if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
            exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/'          
        else
            match none
        endif
    endfunction
    autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()

" Theme color
  if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
endif

let g:airline_theme = 'gruvbox'
colorscheme gruvbox  " Gruvbox

""""""""""""
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
""""""""""""

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" integer value [0|1]
" Enables closing tags for React fragments -> <></> for all supported file types
let g:closetag_enable_react_fragment = 1

"let $FZF_DEFAULT_OPTS="--preview-window 'right:57%' --preview 'bat --style=numbers --line-range :300 {}'
"\ --bind ctrl-y:preview-up,ctrl-e:preview-down,
"\ctrl-b:preview-page-up,ctrl-f:preview-page-down,
"\ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down,
"\shift-up:preview-top,shift-down:preview-bottom,
"\alt-up:half-page-up,alt-down:half-page-down"
