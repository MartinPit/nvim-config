vim.o.background = "dark"
vim.cmd('colorscheme gruvbox')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')

require('lualine').setup {
  options = {
    theme = 'gruvbox'
  }
}

local ok, res = pcall(vim.cmd, 'e')
