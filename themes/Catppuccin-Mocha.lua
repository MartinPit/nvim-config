vim.o.background = "dark"
vim.cmd('colorscheme catppuccin-mocha')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')

require('lualine').setup {
  options = {
    theme = 'catppuccin'
  }
}
local ok, res = pcall(vim.cmd, 'e')
