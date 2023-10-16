-- This file can be loaded by calling `lua require("plugins")` from your init.vim


-- Only required if yo have packer configured as `opt`
vim.cmd.packadd("packer.nvim")


return require("packer").startup(function(use)

    -- Packer manages itself
    use "wbthomason/packer.nvim"

    use "theprimeagen/harpoon"  -- quick file switching
    use "folke/which-key.nvim"  -- shows pending keymaps
    -- use "Vigemus/iron.nvim"  -- interactive repl
    use "jpalardy/vim-slime"  -- send code/text via tmux
    use "nvim-lualine/lualine.nvim"  -- customize statusline
    -- use "lukas-reineke/indent-blankline.nvim"  -- vertical indent guides
    use "lukas-reineke/virt-column.nvim"  -- colorcolumn (linewidth reference)
    use "tpope/vim-sleuth"  -- detect tabstop and shiftwidth
    use "tpope/vim-commentary"  -- comment stuff
    use "tpope/vim-surround"  -- surround stuff
    use "tpope/vim-fugitive"  -- git related
    use "tpope/vim-rhubarb"  -- git related
    use "lewis6991/gitsigns.nvim"  -- git related

    -- LSP
    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        requires = {
            -- LSP support
            {"williamboman/mason.nvim"},
            {"williamboman/mason-lspconfig.nvim"},
            {"neovim/nvim-lspconfig"},

            -- Autocompletion
            {"hrsh7th/nvim-cmp"},
            {"hrsh7th/cmp-buffer"},
            {"hrsh7th/cmp-path"},
            {"saadparwaiz1/cmp_luasnip"},
            {"hrsh7th/cmp-nvim-lsp"},
            {"hrsh7th/cmp-nvim-lua"},

            -- Snippets
            {"L3MON4D3/LuaSnip"},
            {"rafamadriz/friendly-snippets"},

            -- Status updates (spinner); not loading?
            -- {"j-hui/fidget.nvim", tag = "legacy"},

            -- Additional lua/nvim config (sugar)
            {"folke/neodev.nvim"},
        }
    }

    -- Fuzzy finder
    use {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.x",
        requires = {
            {"nvim-lua/plenary.nvim"},
            {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
        }
    }

    -- Code highlighting (and editing/navigation)
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

    -- Theme
    use {
        "rose-pine/neovim",
        as = "rose-pine",
        config = function()
            vim.cmd.colorscheme("rose-pine")
        end
    }

end)

