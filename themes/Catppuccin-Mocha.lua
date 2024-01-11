vim.o.background = "dark"
vim.cmd('colorscheme catppuccin-mocha')

local ok, res = pcall(vim.cmd, 'e')
if not ok then
end

