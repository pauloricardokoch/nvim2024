local lspconfig = require("lspconfig")

local on_attach = function(client, bufnr)
    -- format on save
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = vim.api.nvim_create_augroup("Format", { clear = true }),
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.formatting_seq_sync()
            end,
        })
    end
end

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

-- Lua
lspconfig.lua_ls.setup {
    on_attach = on_attach,
}

-- Golang

-- Terraform

--
