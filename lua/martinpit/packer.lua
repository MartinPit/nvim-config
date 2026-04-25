-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim' -- Essential dependency for many plugins

    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
        }
    }

    use('theprimeagen/harpoon')
    use('mbbill/undotree')

    -- LSP-Zero v3.x (Corrected for Neovim 0.11+)
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-cmdline' },
            { 'hrsh7th/cmp-nvim-lsp-document-symbol' },
            { 'hrsh7th/cmp-nvim-lsp-signature-help' }
        }
    }

    -- Refactoring Plugin (Fixed with missing dependency)
    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            { "lewis6991/async.nvim" },
            { "nvim-lua/plenary.nvim" },
            { "nvim-treesitter/nvim-treesitter",
                lazy = false,
                build = ':TSUpdate',
                run = function()
                    local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
                    ts_update()
                end, }
        }
    }

    -- UI and Themes
    use('rstacruz/vim-closer')
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use { 'folke/tokyonight.nvim' }
    use { 'xiyaowong/transparent.nvim' }
    use { 'windwp/nvim-ts-autotag' }
    use { 'github/copilot.vim' }
    use {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end
    }
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install" })
    use { 'decaycs/decay.nvim', as = 'decay' }
    use { 'yorik1984/newpaper.nvim' }
    use { 'mcchrish/zenbones.nvim', requires = 'rktjmp/lush.nvim' }
    use { 'miikanissi/modus-themes.nvim' }
    use { 'morhetz/gruvbox' }

    -- Databases and Git
    use { 'kristijanhusak/vim-dadbod-ui',
        requires = {
            { 'tpope/vim-dadbod' },
            { 'kristijanhusak/vim-dadbod-completion' },
        }
    }
    use {
        "kdheepak/lazygit.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function() require("telescope").load_extension("lazygit") end,
    }
    use { 'lewis6991/gitsigns.nvim' }

    -- Status and Progress
    use { 'linrongbin16/lsp-progress.nvim' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
end)
