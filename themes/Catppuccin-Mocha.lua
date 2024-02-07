vim.o.background = "dark"
vim.cmd('colorscheme catppuccin-mocha')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')

local mocha = require('lualine.themes.catppuccin-mocha')
mocha.normal.c.bg = 'NONE'
mocha.inactive.c.bg = 'NONE'
require('lualine').setup {
  options = {
    theme = mocha,
  }
}
local ok, res = pcall(vim.cmd, 'e')
