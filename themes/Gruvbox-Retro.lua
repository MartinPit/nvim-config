vim.o.background = "dark"
vim.cmd('colorscheme gruvbox')
local ok, res = pcall(vim.cmd, 'e')
if not ok then
end

vim.cmd('source ~/.config/nvim/after/plugin/gitsigns.lua')
