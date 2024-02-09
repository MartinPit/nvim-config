local easypick = require('easypick')
easypick.setup({
    pickers = {
        {
            name = 'projects',
            command = 'find ~/.config ~/projects -mindepth 1 -maxdepth 1 -type d',
            action = easypick.actions.nvim_commandf('silent ! kitty-sessionizer %s'),
            previewer = easypick.previewers.default(),
        }
    }
})

vim.keymap.set("n", "<C-f>", "<cmd>silent Easypick projects<CR>")
