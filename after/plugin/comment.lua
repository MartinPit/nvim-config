local api = require('Comment.api')

vim.keymap.set('n', '<leader>l', api.toggle.linewise.current)

vim.keymap.set(
    'n', '<leader>c', api.call('toggle.linewise', 'g@'),
    { expr = true }
)

vim.keymap.set(
    'n', '<leader>b', api.call('toggle.blockwise', 'g@'),
    { expr = true }
)
