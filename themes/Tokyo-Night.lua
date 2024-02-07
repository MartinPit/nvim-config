vim.cmd('colorscheme tokyonight-storm')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')

local tokyo = require('lualine.themes.tokyonight')
tokyo.normal.c.bg = 'NONE'
require('lualine').setup {
  options = {
    theme = tokyo,
  },
}
local ok, res = pcall(vim.cmd, 'e')
