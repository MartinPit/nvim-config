local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'html',
    'cssls',
    'ts_ls',
    'eslint',
    'rust_analyzer',
    'lua_ls'
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').cssls.setup({
    capabilities = capabilities,
    filetypes = { 'css', 'scss', 'less' },
    on_attach = lsp.on_attach,
})

require('lspconfig').ts_ls.setup({})

lsp.set_sign_icons({
    error = '✘',
    warn = '',
    hint = '',
    info = ''
})

cmp.setup({
    mapping = cmp_mappings,
    sources = {
        { lsp.defaults.cmp_sources() },
        { name = 'vim-dadbod-completion' },
        { name = 'buffer' },
        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'nvim_lsp_signature_help' }
    },
    window = {
        completion = {
            border = 'rounded',
        },
        documentation = {
            border = 'rounded',
        },
    }
})

cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'buffer' }
    }, {
        { name = 'nvim_lsp_document_symbol' }
    })
})

cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' },
        { name = 'buffer' }
    }, {
        {
            name = 'cmdline',
            option = {
                ignore_cmds = { 'Man', '!' }
            }
        }
    })
})

lsp.setup({
    cmp = cmp,
})

lsp.on_attach(function(client, buff)
    local opts = { buffer = buff, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>dg", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)


require('mason').setup({
    keymaps = {
        apply_language_filter = "<C-l>",
    }
})

lsp.setup()
