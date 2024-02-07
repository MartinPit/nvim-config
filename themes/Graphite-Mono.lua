vim.o.background = 'dark'
vim.cmd('colorscheme zenbones')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')

local graphite = require('lualine.themes.zenbones')
graphite.normal.c.bg = 'NONE'
require('lualine').setup {
  options = {
    theme = graphite,
  },
}
local ok, res = pcall(vim.cmd, 'e')
