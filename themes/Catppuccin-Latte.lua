vim.o.background = "light"
vim.cmd('colorscheme catppuccin-latte')

local ok, res = pcall(vim.cmd, 'e')
if not ok then
end

vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
