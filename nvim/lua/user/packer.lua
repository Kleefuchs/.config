-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        {
            run = ':TSUpdate'
        },
        config = function()
            require("nvim-treesitter.configs").setup(require("configs.treesitter"))
        end,
    }

    use {
        'nvim-treesitter/nvim-treesitter-context',
        config = function()
            require("treesitter-context").setup(require("configs.treesitter-context"))
        end,
    }

    use {
        'nvim-treesitter/playground',
    }

    use {
        'theprimeagen/harpoon',
    }

    use {
        'mbbill/undotree',
    }

    use {
        'tpope/vim-fugitive',
    }

    use {
        "eatgrass/maven.nvim",
        config = function()
            require('maven').setup(require('configs.maven'))
        end,
    }

    use ({
        "mhinz/vim-signify",
    })

    use {
        'lambdalisue/vim-suda',
    }

    use {
        "williamboman/mason.nvim",
        ensure_installed = {
            'html-lsp',
            'typescript-language-server',
            'emmet-language-server',
            'java-test',
            'jdtls',
        }
    }

    use {
        "mfussenegger/nvim-jdtls", -- java lsp
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use {
        'xzbdmw/colorful-menu.nvim',
        config = function()
            require("colorful-menu").setup(require("configs.colorful-menu"))
        end,

    }

    use {
        'mfussenegger/nvim-dap',
        requires = {
            {'williamboman/mason.nvim'},
            {'jay-babu/mason-nvim-dap.nvim'},
            {'theHamsta/nvim-dap-virtual-text'},
            {'nvim-neotest/nvim-nio'},
            {'rcarriga/nvim-dap-ui'},
            {'jonathan-elize/dap-info.nvim'},
            {'Weissle/persistent-breakpoints.nvim'},
        },
    }

    use {
        'mrcjkb/rustaceanvim',
    }

    use("windwp/nvim-autopairs")

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    })

    use ({
        "famiu/feline.nvim"
    })

    use ({
        "nvim-tree/nvim-web-devicons"
    })

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup(require('configs.lualine'))
        end,
    }

    use ({
        "MunifTanjim/prettier.nvim",
    })

    use {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end,
    }

    use ({
        "echasnovski/mini.hipatterns",
        "echasnovski/mini.jump",
        "echasnovski/mini.cursorword",
        "echasnovski/mini.clue",
    })

    use ({
        "ntpeters/vim-better-whitespace",
    })

    use {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    }

    use {
        "goolord/alpha-nvim",
        -- requires = { 'echasnovski/mini.icons' },
        requires = { { 'nvim-tree/nvim-web-devicons' }, },
        config = function()
            local startify = require("alpha.themes.startify")
            -- available: devicons, mini, default is mini
            -- if provider not loaded and enabled is true, it will try to use another provider
            startify.file_icons.provider = "devicons"
            require("alpha").setup(
                startify.config
            )
        end,
    }

    use ({
        "jbyuki/instant.nvim",
    })

    use {
        "smoka7/multicursors.nvim",
        requires = {
            { "nvimtools/hydra.nvim" },
        },
        config = function()
            require("multicursors").setup {

            }
        end,
    }

    --AI:

    use {
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup(require("configs.supermaven"))
        end,
    }

    use ({
        "rebelot/kanagawa.nvim",
        as = 'kanagawa',
    })


end)
