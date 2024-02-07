vim.o.background = 'dark'
vim.cmd('colorscheme zenbones')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')

require('lualine').setup {
  options = {
    theme = 'zenbones',
  },
}
local ok, res = pcall(vim.cmd, 'e')
