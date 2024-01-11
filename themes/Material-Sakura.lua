require('newpaper').setup({
    style = 'light'
})

vim.cmd('colorscheme newpaper')
local ok, res = pcall(vim.cmd, 'e')
if not ok then
end

