-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    vim.keymap.set("n", "C-h", function() ui.nav_file(1) end)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.api.nvim_command, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    use('rstacruz/vim-closer')
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use "EdenEast/nightfox.nvim" -- Packer
    use { 'folke/tokyonight.nvim' }
    use { 'decaycs/decay.nvim', as = 'decay' }
    use('https://github.com/rktjmp/lush.nvim')
    use { 'xiyaowong/transparent.nvim' }
    use { 'windwp/nvim-ts-autotag' }
    use { 'github/copilot.vim' }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install" })
    use('https://github.com/nocksock/bloop.nvim')
end)
