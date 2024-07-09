vim.o.background = "light"

vim.cmd('set termguicolors')
vim.cmd('colorscheme modus_operandi')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')


local ayu = require('lualine.themes.ayu_light')
ayu.normal.c.bg = 'NONE'
require('lualine').setup {
  options = {
    theme = ayu
  }
}
local ok, res = pcall(vim.cmd, 'e')
