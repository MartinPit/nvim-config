vim.o.background = "light"

vim.cmd('set termguicolors')
vim.cmd('colorscheme modus_operandi')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')

require('lualine').setup {
  options = {
    theme = 'ayu_light'
  }
}
local ok, res = pcall(vim.cmd, 'e')
