vim.o.background = 'dark'
vim.cmd('colorscheme zenbones')
local ok, res = pcall(vim.cmd, 'e')
if not ok then
end

