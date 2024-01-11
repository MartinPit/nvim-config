vim.o.background = 'dark'
require('decay').setup({
    style = 'default',
})

vim.cmd('colorscheme decay')
local ok, res = pcall(vim.cmd, 'e')
if not ok then
end

