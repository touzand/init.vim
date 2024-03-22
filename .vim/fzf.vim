let g:fzf_vim = {}

"let g:fzf_vim.preview_window = ['right,50%', 'ctrl-/']
"let g:fzf_vim.preview_window = ['hidden,right,50%,<70(up,40%)', 'ctrl-/']

let g:fzf_layout = { 'window': { 'options':'--reverse','width': 0.7, 'height': 0.7, 'relative':v:false} }
"nnoremap <leader>fv :call fzf#run({'window':{'options': '--reverse','width': 0.7, 'height': 0.7, }})<CR>

"let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true, 'yoffset': 1.0 } }

"let g:fzf_layout = { 'down': '40%' }
"let g:fzf_layout = {"reverse"}
"let g:fzf_layout = {'window':'enew'}

