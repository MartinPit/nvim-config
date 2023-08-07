require('martinpit')

local autocmd = vim.api.nvim_create_autocmd

function reload()
    vim.cmd('source ~/.config/nvim/after/plugin/colors.lua')
end

autocmd({"Signal"}, {
    pattern = 'SIGUSR1',
    callback = reload,
})
