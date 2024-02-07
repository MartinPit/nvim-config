vim.o.background = 'dark'
require('rose-pine').setup({
    disable_background = true
})
vim.cmd('colorscheme rose-pine')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')

local rose = require('lualine.themes.rose-pine')
require('lualine').setup {
  options = {
    theme = rose,
  },
}
local ok, res = pcall(vim.cmd, 'e')
