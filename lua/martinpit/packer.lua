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
    use { 'folke/tokyonight.nvim' }
    use { 'xiyaowong/transparent.nvim', vim.cmd('TransparentEnable') }
    use { 'windwp/nvim-ts-autotag' }
    use { 'github/copilot.vim' }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install" })
    use { 'decaycs/decay.nvim', as = 'decay' }
    use { 'yorik1984/newpaper.nvim' }
    use {
        'mcchrish/zenbones.nvim',
        requires = 'rktjmp/lush.nvim'
    }
    use { 'miikanissi/modus-themes.nvim' }
    use { 'morhetz/gruvbox' }
    use { 'kristijanhusak/vim-dadbod-ui',
        requires = {
            { 'tpope/vim-dadbod' },
            { 'kristijanhusak/vim-dadbod-completion' },
        }
    }
    use {
        "kdheepak/lazygit.nvim",
        requires = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("telescope").load_extension("lazygit")
        end,
    }
end)
