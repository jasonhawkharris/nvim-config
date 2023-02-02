-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'ThePrimeagen/vim-be-good'
    use 'b3nj5m1n/kommentary'
    use { 'ojroques/nvim-hardline' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- git related plugins
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-fugitive'

    use { "shortcuts/no-neck-pain.nvim", tag = "*" }
    use { 'm4xshen/autoclose.nvim' }
    use {
        'andersevenrud/nordic.nvim',
        config = function()
            -- The table used in this example contains the default settings.
            -- Modify or remove these to your liking (this also applies to alternatives below):
            require('nordic').colorscheme({
                -- Underline style used for spelling
                -- Options: 'none', 'underline', 'undercurl'
                underline_option = 'none',

                -- Italics for certain keywords such as constructors, functions,
                -- labels and namespaces
                italic = true,

                -- Italic styled comments
                italic_comments = false,

                -- Minimal mode: different choice of colors for Tabs and StatusLine
                minimal_mode = false,

                -- Darker backgrounds for certain sidebars, popups, etc.
                -- Options: true, false, or a table of explicit names
                -- Supported: terminal, qf, vista_kind, packer, nvim-tree, telescope, whichkey
                alternate_backgrounds = false,

                -- Callback function to define custom color groups
                -- See 'lua/nordic/colors/example.lua' for example defitions
                --[[ custom_colors = function(c, s, cs)
                    return {}
                end ]]
            })
        end
    }

    use { "anuvyklack/windows.nvim",
        requires = {
            "anuvyklack/middleclass",
            "anuvyklack/animation.nvim"
        },
        config = function()
            vim.o.winwidth = 10
            vim.o.winminwidth = 10
            vim.o.equalalways = false
            require('windows').setup()
        end
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            -- Snippet Collection (Optional)
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use('ellisonleao/glow.nvim')
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('numToStr/FTerm.nvim')
    use('lukas-reineke/indent-blankline.nvim')
    -- prettier netrw
    -- use { 'prichrd/netrw.nvim' }
    -- sourcegraph
    --[[ use {
        'tjdevries/sg.nvim',
        build = "cargo build --workspace",
        dependencies = { "nvim-lua/plenary.nvim" }
    } ]]

    -- one dark theme
    -- use({
    -- 	'ful1e5/onedark.nvim',
    -- 	as = 'onedark',
    -- 	config = function()
    -- 		vim.cmd('colorscheme onedark')
    -- 	end
    -- })

    -- ChatGPT
    --[[ use({
        "jackMort/ChatGPT.nvim",
        config = function()
            require("chatgpt").setup({
                -- optional configuration
            })
        end,
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    }) ]]

    --[[ use({
        'rose-pine/nvim',
        as = 'rose-pine',
        config = function()
            vim.cmd("colorscheme rose-pine")
        end
    }) ]]
end)
