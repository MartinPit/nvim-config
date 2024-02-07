vim.cmd('set termguicolors')
vim.cmd('colorscheme default')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')

require('lualine').setup {
  options = {
    theme = 'auto'
  }
}
local ok, res = pcall(vim.cmd, 'e')
