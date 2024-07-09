vim.o.background = "dark"
vim.cmd('colorscheme gruvbox')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')

local gruvbox = require('lualine.themes.gruvbox')
gruvbox.normal.b.bg = 'NONE'
gruvbox.insert.b.bg = 'NONE'
gruvbox.visual.b.bg = 'NONE'
gruvbox.replace.b.bg = 'NONE'
gruvbox.command.b.bg = 'NONE'
gruvbox.inactive.b.bg = 'NONE'
gruvbox.normal.c.bg = 'NONE'
gruvbox.insert.c.bg = 'NONE'
gruvbox.visual.c.bg = 'NONE'
gruvbox.replace.c.bg = 'NONE'
gruvbox.command.c.bg = 'NONE'
gruvbox.inactive.c.bg = 'NONE'
require('lualine').setup {
  options = {
    theme = 'gruvbox'
  }
}

local ok, res = pcall(vim.cmd, 'e')
