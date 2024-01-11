require('rose-pine').setup({
    disable_background = true
})

vim.cmd('colorscheme rose-pine')
local ok, res = pcall(vim.cmd, 'e')
if not ok then
end

