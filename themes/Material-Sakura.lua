require('newpaper').setup({
    style = 'light'
})
vim.cmd('colorscheme newpaper')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')

require('lualine').setup {
  options = {
    theme = 'newpaper',
  },
}
local ok, res = pcall(vim.cmd, 'e')
