require('newpaper').setup({
    style = 'light'
})
vim.cmd('colorscheme newpaper')
vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
vim.cmd('source ~/.config/nvim/after/plugin/transparent.lua')

local sakura = require('lualine.themes.newpaper')
sakura.normal.b.bg = 'NONE'
sakura.normal.x.bg = 'NONE'
sakura.insert.x.bg = 'NONE'
sakura.visual.x.bg = 'NONE'
sakura.replace.x.bg = 'NONE'
sakura.command.x.bg = 'NONE'
sakura.normal.c.bg = 'NONE'
sakura.insert.c.bg = 'NONE'
sakura.visual.c.bg = 'NONE'
sakura.replace.c.bg = 'NONE'
sakura.command.c.bg = 'NONE'
require('lualine').setup {
  options = {
    theme = sakura,
  },
}
local ok, res = pcall(vim.cmd, 'e')
