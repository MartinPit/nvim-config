vim.cmd('colorscheme tokyonight-storm')
require('lualine').setup {
  options = {
    theme = 'tokyonight',
  },
}
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')

local ok, res = pcall(vim.cmd, 'e')
