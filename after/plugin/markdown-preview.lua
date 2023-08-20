vim.g.mkdp_open_to_the_world = 1
vim.g.mkdp_open_ip = '192.168.0.121'
vim.g.mkdp_browser = 'firefox'
vim.g.mkdp_port = 8080
vim.g.mkdp_command_for_global = 1

vim.keymap.set('n', '<leader>md', function ()
    vim.cmd('MarkdownPreview')
end)


