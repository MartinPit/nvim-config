vim.o.background = "light"
vim.cmd('colorscheme catppuccin-latte')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')

local latte = require('lualine.themes.catppuccin-latte')
latte.normal.c.bg = 'NONE'
require('lualine').setup {
  options = {
    theme = latte,
  }
}

local ok, res = pcall(vim.cmd, 'e')
