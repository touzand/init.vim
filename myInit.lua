 ensure_installed = { "c", "lua", "rust" }

---- disable netrw at the very start of your init.lua
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

---- optionally enable 24-bit colour
--vim.opt.termguicolors = true

---- empty setup using defaults
--require("nvim-tree").setup()

---- OR setup with some options
--require("nvim-tree").setup({
  --sort = {
    --sorter = "case_sensitive",
  --},
  --view = {
    --width = 30,
  --},
  --renderer = {
    --group_empty = true,
  --},
  --filters = {
    --dotfiles = true,
  --},
  --
--})

-- on_attach

vim.g["nvim_tree_icons"] = {
  git = {
    unstaged = "○",
    staged = "●",
    unmerged = "⊜",
    renamed = "⊙",
    untracked = "⊕",
    deleted = "⊗",
    ignored = "⊘"
  },
  folder = {
    arrow_open = "▾",
    arrow_closed = "▸",
    default = "▸",
    open =  "▾",
    empty = "▸",
    empty_open = "▾",
    symlink = "▸",
    symlink_open = "▾",
  },
  lsp = {
    warning = "⊗",
    error = "⊗",
  }
}






vim.g["nvim_tree_show_icons"] = {
  git = 0,
  folders = 0,
  files = 0,
  folder_arrows = 0,
}

vim.g.nvim_tree_icons = {
  default = '',
}


local nvim_tree = require('nvim-tree')
local gwidth = vim.api.nvim_list_uis()[1].width
local gheight = vim.api.nvim_list_uis()[1].height
local width = 80
local height = 30
 
nvim_tree.setup{

  view = {
    float = {
      enable = true,
      open_win_config = {
        relative = "editor",
        width = width,
        height = height,
        row = (gheight - height) * 0.4,
        col = (gwidth - width) * 0.5,
      }
      }
    },
  renderer = {
icons = {
  glyphs = {
  git = {
  unstaged = "○",
    staged = "●",
    unmerged = "⊜",
    renamed = "⊙",
    untracked = "⊕",
    deleted = "⊗",
    ignored = "⊘",
  },
},
  show = {
    file = false,
    folder = false,
    folder_arrow = false,
    git = true,
  }
  }
},
}
vim.api.nvim_set_hl(0, "NormalFloat", {

fg = "none",

bg = "none",

})

vim.g.nvim_tree_icons = {
  default = '',
}















--require('gitsigns').setup {
  --signs = {
    --add          = { text = '¿' },
    --change       = { text = '¿' },
    --delete       = { text = '_' },
    --topdelete    = { text = '¿' },
    --changedelete = { text = '~' },
    --untracked    = { text = '¿' },
  --},
  --signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
  --numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
  --linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
  --word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
  --watch_gitdir = {
    --follow_files = true
  --},
  --auto_attach = true,
  --attach_to_untracked = false,
  --current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  --current_line_blame_opts = {
    --virt_text = true,
    --virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    --delay = 1000,
    --ignore_whitespace = false,
    --virt_text_priority = 100,
  --},
  --current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
  --current_line_blame_formatter_opts = {
    --relative_time = false,
  --},
  --sign_priority = 6,
  --update_debounce = 100,
  --status_formatter = nil, -- Use default
  --max_file_length = 40000, -- Disable if file is longer than this (in lines)
  --preview_config = {
    ---- Options passed to nvim_open_win
    --border = 'single',
    --style = 'minimal',
    --relative = 'cursor',
    --row = 0,
    --col = 1
  --},
--}








--{
	--modes = { -- configurations per mode
		--ataraxis = {
			--shade = "dark", -- if `dark` then dim the padding windows, otherwise if it's `light` it'll brighten said windows
			--backdrop = 0, -- percentage by which padding windows should be dimmed/brightened. Must be a number between 0 and 1. Set to 0 to keep the same background color
			--minimum_writing_area = { -- minimum size of main window
				--width = 70,
				--height = 44,
			--},
			--quit_untoggles = true, -- type :q or :qa to quit Ataraxis mode
			--padding = { -- padding windows
				--left = 52,
				--right = 52,
				--top = 0,
				--bottom = 0,
			--},
			--callbacks = { -- run functions when opening/closing Ataraxis mode
				--open_pre = nil,
				--open_pos = nil,
				--close_pre = nil,
				--close_pos = nil
			--},
		--},
		--minimalist = {
			--ignored_buf_types = { "nofile" }, -- save current options from any window except ones displaying these kinds of buffers
			--options = { -- options to be disabled when entering Minimalist mode
				--number = false,
				--relativenumber = false,
				--showtabline = 0,
				--signcolumn = "no",
				--statusline = "",
				--cmdheight = 1,
				--laststatus = 0,
				--showcmd = false,
				--showmode = false,
				--ruler = false,
				--numberwidth = 1
			--},
			--callbacks = { -- run functions when opening/closing Minimalist mode
				--open_pre = nil,
				--open_pos = nil,
				--close_pre = nil,
				--close_pos = nil
			--},
		--},
		--narrow = {
			----- change the style of the fold lines. Set it to:
			----- `informative`: to get nice pre-baked folds
			----- `invisible`: hide them
			----- function() end: pass a custom func with your fold lines. See :h foldtext
			--folds_style = "informative",
			--run_ataraxis = false, -- display narrowed text in a Ataraxis session
			--callbacks = { -- run functions when opening/closing Narrow mode
				--open_pre = nil,
				--open_pos = nil,
				--close_pre = nil,
				--close_pos = nil
			--},
		--},
		--focus = {
			--callbacks = { -- run functions when opening/closing Focus mode
				--open_pre = nil,
				--open_pos = nil,
				--close_pre = nil,
				--close_pos = nil
			--},
		--}
	--},
	--integrations = {
		--tmux = false, -- hide tmux status bar in (minimalist, ataraxis)
		--kitty = { -- increment font size in Kitty. Note: you must set `allow_remote_control socket-only` and `listen_on unix:/tmp/kitty` in your personal config (ataraxis)
			--enabled = false,
			--font = "+3"
		--},
		--twilight = false, -- enable twilight (ataraxis)
		--lualine = false -- hide nvim-lualine (ataraxis)
	--},
--}



require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'gruvbox',
    component_separators = { left = ' ', right = ' '},
    section_separators = { left = ' ', right = ' '},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'filetype','progress'},
    lualine_y = { 'diff'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}























--require'nvim-treesitter.configs'.setup {
  --highlight = {
    --enable = true,
    ---- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    ---- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    ---- Using this option may slow down your editor, and you may see some duplicate highlights.
    ---- Instead of true it can also be a list of languages
    --additional_vim_regex_highlighting = false,
  --},
--}
