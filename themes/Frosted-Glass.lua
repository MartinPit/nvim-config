vim.o.background = "light"

vim.cmd('set termguicolors')
vim.cmd('colorscheme modus_operandi')
local ok, res = pcall(vim.cmd, 'e')
if not ok then
end

vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
