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
        }
    }

    use {
        'nvim-treesitter/nvim-treesitter-context',
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
        'lambdalisue/vim-suda',
    }

    use {
        "williamboman/mason.nvim",
        ensure_installed = {
            'html-lsp',
            'typescript-language-server',
            'emmet-language-server',
        }
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
        'mfussenegger/nvim-dap',
        requires = {
            {'williamboman/mason.nvim'},
            {'jay-babu/mason-nvim-dap.nvim'},
            {'theHamsta/nvim-dap-virtual-text'},
            {'nvim-neotest/nvim-nio'},
            {'rcarriga/nvim-dap-ui'},
            {'jonathan-elize/dap-info.nvim'},
        }
    }

    use {
        'mrcjkb/rustaceanvim',
    }

    use("windwp/nvim-autopairs")

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    })

    use ({
        "famiu/feline.nvim"
    })

    use ({
        "nvim-tree/nvim-web-devicons"
    })

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use ({
        "MunifTanjim/prettier.nvim",
    })

    use ({
        "norcalli/nvim-colorizer.lua",
    })

    use ({
        "echasnovski/mini.hipatterns",
        "echasnovski/mini.notify",
        "echasnovski/mini.jump",
        "echasnovski/mini.cursorword",
        "echasnovski/mini.clue",
    })

    use ({
        "ntpeters/vim-better-whitespace",
    })

    use ({
        "numToStr/Comment.nvim",
    })

    use ({
        "rebelot/kanagawa.nvim",
        as = 'kanagawa',
    })


end)
