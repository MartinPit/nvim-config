local api = require('Comment.api')

vim.keymap.set('n', '<leader>l', api.call('toggle.line', '1'), { expr = true })

vim.keymap.set(
    'n', '<leader>c', api.call('toggle.linewise', 'g@'),
    { expr = true }
)

vim.keymap.set(
    'n', '<leader>b', api.call('toggle.blockwise', 'g@'),
    { expr = true }
)
