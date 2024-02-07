vim.o.background = 'dark'
vim.cmd('colorscheme zenbones')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')

require('lualine').setup {
  options = {
    theme = 'zenbones',
  },
}
local ok, res = pcall(vim.cmd, 'e')
