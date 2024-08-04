"let g:keysound_enable = 1
"let g:keysound_theme = 'default'
" Configuracion para supuestamente evitar quiebre en styled-componentes
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

autocmd CursorHold * silent call CocActionAsync('doHover')
autocmd StdinReadPre * let s:std_in=1
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTreeToggle | endif
autocmd VimEnter * NvimTreeOpen

" Init config for (FZF)
let g:fzf_vim = {}
let g:fzf_layout = { 'window': { 'options':'--reverse','width': 0.8, 'height': 0.8, 'relative':v:false} }
let $FZF_DEFAULT_OPTS="--color=dark --layout=reverse --margin=1,1 --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:2 --color=info:0,pointer:12,marker:14,spinner:11,header:-1"

" Init config for (MergeTool)
" Possible values :'local' ( default ), 'remote' , 'base'
let g:mergetool_prefer_revision = 'local'

" ( m ) : for working of tree version merged file
" ( r ) : for 'remote' revision
" ( l ) : for 'local' revision
let g:mergetool_layout = 'bmr'

function s:QuitWindow()

  " If we're in merge mode, exit
  if get(g:, 'mergetool_in_merge_mode', 0)
    call mergetool#stop()
    return
  endif

  if &diff
    " Quit diff mode intelligently...
  endif

  quit
endfunction

command QuitWindow call s:QuitWindow()
nnoremap <silent> <leader>q :QuitWindow<CR>

function s:on_mergetool_set_layout(split)
  set syntax=off
  set nospell

  if a:split["layout"] ==# 'mr,b' && a:split["split"] ==# 'b'
    set nodiff
    set syntax=on

    resize 15
  endif
endfunction
let g:MergetoolSetLayoutCallback = function('s:on_mergetool_set_layout')

"function s:on_mergetool_set_layout(split)
  "if a:split["layout"] ==# 'mr,b' && a:split["split"] ==# 'b'
    "set nodiff
    "set syntax=on

    "resize 15
  "endif
"endfunction
"let g:MergetoolSetLayoutCallback = function('s:on_mergetool_set_layout')

"function s:on_mergetool_set_layout(split)
""Disable syntax and spell checking highlighting in merge mode
"setlocal syntax=off
"setlocal nospell
"" When base is horizontal split at the bottom
"" Turn off diff mode,
"" and show syntax highlighting
"" Also let it take less height
"if a:split["layout"] ==# 'mr,b' && a:split["split"] ==# 'b'
"setlocal nodiff
"setlocal syntax=on
"resize 15
"endif
"endfunction
"let g:MergetoolSetLayoutCallback = function('s:on_mergetool_set_layout' )

"function s:QuitWindow()
    "if get(q:,'mergetool_in_merge_mode',0)
      "call mergetool#stop()
    "return
  "endif
  "quit
"endfunction

"if get(g:, 'mergetool_in_merge_mode', 0)
  "call mergetool#stop()
  "return
"endif

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Auto popup complete disabled
let g:asyncomplete_auto_popup = 0

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"Lsp diagnostics disabled (so many errors on screen when using typescript)
let g:lsp_diagnostics_enabled = 0

" Function for hightlight when hover
    function! HighlightWordUnderCursor()
        if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
            exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/'          
        else
            match none
        endif
    endfunction
    autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()

" Init config for (Gruvbox / theme)
  if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
endif

let g:airline_theme = 'gruvbox'
colorscheme gruvbox  " Gruvbox

" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'

" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml'

" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx'

" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1

" Disables auto-close if not in a "valid" region (based on filetype)
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

" Enables closing tags for React fragments -> <></> for all supported file types
let g:closetag_enable_react_fragment = 1

" Init True-zen
lua << EOF
	require("true-zen").setup {
	modes = { -- configurations per mode
		ataraxis = {
			shade = "dark", -- if `dark` then dim the padding windows, otherwise if it's `light` it'll brighten said windows
			backdrop = 0, -- percentage by which padding windows should be dimmed/brightened. Must be a number between 0 and 1. Set to 0 to keep the same background color
			minimum_writing_area = { -- minimum size of main window
				width = 70,
				height = 44,
			},
			quit_untoggles = true, -- type :q or :qa to quit Ataraxis mode
			padding = { -- padding windows
				left = 52,
				right = 52,
				top =1,
				bottom = 1,
			},
			callbacks = { -- run functions when opening/closing Ataraxis mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		},
		minimalist = {
			ignored_buf_types = { "nofile" }, -- save current options from any window except ones displaying these kinds of buffers
			options = { -- options to be disabled when entering Minimalist mode
				number = false,
				relativenumber = false,
				showtabline = 0,
				signcolumn = "no",
				statusline = "",
				cmdheight = 1,
				laststatus = 0,
				showcmd = false,
				showmode = false,
				ruler = false,
				numberwidth = 1
			},
			callbacks = { -- run functions when opening/closing Minimalist mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		},
		narrow = {
			--- change the style of the fold lines. Set it to:
			--- `informative`: to get nice pre-baked folds
			--- `invisible`: hide them
			--- function() end: pass a custom func with your fold lines. See :h foldtext
			folds_style = "invisible",
			run_ataraxis = true, -- display narrowed text in a Ataraxis session
			callbacks = { -- run functions when opening/closing Narrow mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		},
		focus = {
			callbacks = { -- run functions when opening/closing Focus mode
				open_pre = nil,
				open_pos = nil,
				close_pre = nil,
				close_pos = nil
			},
		}
	},
	integrations = {
		tmux = false, -- hide tmux status bar in (minimalist, ataraxis)
		kitty = { -- increment font size in Kitty. Note: you must set `allow_remote_control socket-only` and `listen_on unix:/tmp/kitty` in your personal config (ataraxis)
			enabled = false,
			font = "+3"
		},
		twilight = false, -- enable twilight (ataraxis)
		lualine = true -- hide nvim-lualine (ataraxis)
	},


	}

EOF







let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }




let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'




let g:ale_fix_on_save = 1

let g:ale_set_highlights = 0

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_virtualtext_cursor = 'disabled'
