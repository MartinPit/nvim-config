require('gitsigns').setup()

vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = '#50fa7b', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = '#f4e409', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = '#8338ec', bg = 'NONE' })
