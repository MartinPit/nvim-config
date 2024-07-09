vim.o.background = 'dark'
require('decay').setup({
    style = 'default',
})
vim.cmd('colorscheme decay')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')

local decay = require('lualine.themes.decay')
decay.normal.b.bg = 'NONE'
decay.insert.b.bg = 'NONE'
decay.visual.b.bg = 'NONE'
decay.replace.b.bg = 'NONE'
decay.command.b.bg = 'NONE'
decay.normal.c.bg = 'NONE'
decay.normal.c.fg = '#bec1c4'
require('lualine').setup({
    options = {
        theme = decay,
    }
})
local ok, res = pcall(vim.cmd, 'e')
