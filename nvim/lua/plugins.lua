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
    use 'nvim-tree/nvim-web-devicons'
    use {'nvim-tree/nvim-tree.lua',
    config = function()
        require("configs/nvim-tree")
    end
}
    
    -- Theme
    use { "catppuccin/nvim", as = "catppuccin",
        config = function()
            require("configs.theme")
        end
    } 

end)
