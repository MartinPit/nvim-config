vim.o.background = 'dark'
require('rose-pine').setup({
    disable_background = true
})
vim.cmd('colorscheme rose-pine')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')

require('lualine').setup {
  options = {
    theme = 'rose-pine',
  },
}
local ok, res = pcall(vim.cmd, 'e')
