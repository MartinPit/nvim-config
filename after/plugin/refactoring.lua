require('refactoring').setup()


vim.keymap.set({ 'n', 'x' }, '<leader>re', function() require('telescope').extensions.refactoring.refactors() end)
vim.keymap.set("n", "<leader>rp", function() require('refactoring').debug.printf({ below = false }) end)
vim.keymap.set({ "x", "n" }, "<leader>rv", function() require('refactoring').debug.print_var() end)
vim.keymap.set("n", "<leader>rc", function() require('refactoring').debug.cleanup({}) end)
