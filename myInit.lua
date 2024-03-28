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
    ignored = "⊘"
  },
  },
  show = {
    file = false,
    folder = false,
    folder_arrow = false,
    git = true,
  }
},

        }
      }

vim.api.nvim_set_hl(0, "NormalFloat", {

fg = "none",

bg = "none",

})

vim.g.nvim_tree_icons = {
  default = '',
}

