vim.cmd('set termguicolors')
vim.cmd('colorscheme default')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')

require('lualine').setup {
  options = {
    theme = 'auto'
  }
}
local ok, res = pcall(vim.cmd, 'e')
