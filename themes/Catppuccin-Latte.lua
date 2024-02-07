vim.o.background = "light"
vim.cmd('colorscheme catppuccin-latte')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')

require('lualine').setup {
  options = {
    theme = 'catppuccin'
  }
}
local ok, res = pcall(vim.cmd, 'e')
