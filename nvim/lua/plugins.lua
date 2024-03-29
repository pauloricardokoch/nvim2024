-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
    pattern = "plugins.lua",
    command = "source <afile> | PackerCompile",
})

return require("packer").startup(function(use)
    -- Packer
    use("wbthomason/packer.nvim")

    -- Common utilities
    use("nvim-lua/plenary.nvim")

    -- Nvim tree
    use "nvim-tree/nvim-web-devicons"
    --    use { "nvim-tree/nvim-tree.lua",
    --        config = function()
    --            require("configs/nvim-tree")
    --        end
    --    }

    -- Theme
    use { "catppuccin/nvim", as = "catppuccin",
        config = function()
            require("configs/theme")
        end
    }
    use { "rose-pine/neovim", as = "rose-pine" }

    -- Mason
    use {
        { "williamboman/mason.nvim",
            config = function()
                require("configs/mason")
            end
        },
        "williamboman/mason-lspconfig.nvim",

        -- Lsp
        { "neovim/nvim-lspconfig",
            config = function()
                require("configs/lsp/settings")
                require("configs/lsp/mappings")
            end
        }
    }

    -- Fuzzy search
    use { "ms-jpq/coq_nvim",
        branch = "coq",
        config = function()
            require("configs/coq")
        end
    }

    -- Telescope
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.2",
        -- or                          , branch = "0.1.x",
        requires = {
            { "nvim-telescope/telescope-live-grep-args.nvim" },
            { "smartpde/telescope-recent-files" },
        },
        config = function()
            require("telescope").load_extension("live_grep_args")
            require("configs/telescope")
        end
    }

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require("configs/treesitter")
        end
    }

    -- DAP
    use { "nvim-neotest/nvim-nio" }
    use { "rcarriga/nvim-dap-ui",
        requires = { "mfussenegger/nvim-dap" },
        config = function()
            require("configs/dap")
        end
    }
    use 'leoluz/nvim-dap-go'

    -- Gitsigns
    use { "lewis6991/gitsigns.nvim",
        config = function()
            require("configs/gitsigns")
        end
    }

    -- Fugitive
    use { "tpope/vim-fugitive" }

    -- Top bar
    --    use { "romgrk/barbar.nvim",
    --        config = function()
    --            require("configs/barbar")
    --        end
    --    }

    -- Lualine
    use { "nvim-lualine/lualine.nvim",
        config = function()
            require("configs/lualine")
        end
    }
end)
