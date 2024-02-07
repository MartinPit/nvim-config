vim.o.background = 'dark'
require('decay').setup({
    style = 'default',
})
vim.cmd('colorscheme decay')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')

require('lualine').setup({
    options = {
        theme = 'decay'
    }
})
local ok, res = pcall(vim.cmd, 'e')
