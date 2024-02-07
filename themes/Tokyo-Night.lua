vim.cmd('colorscheme tokyonight-storm')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')

require('lualine').setup {
  options = {
    theme = 'tokyonight',
  },
}
local ok, res = pcall(vim.cmd, 'e')
