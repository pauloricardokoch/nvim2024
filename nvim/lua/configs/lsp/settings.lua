local status, lspconfig = pcall(require, "lspconfig")
if not status then
    return
end

local protocol = require("vim.lsp.protocol")

local on_attach = function(client, bufnr)
    require "completion".on_attach(client)
    -- format on save
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = vim.api.nvim_create_augroup("Format", { clear = true }),
            buffer = bufnr,
            callback = function()
                vim.lsp.buf.format({ async = true })
            end,
        })
    end
end

-- Lua
lspconfig.lua_ls.setup {
    on_attach = on_attach,
}

-- Golang

-- Terraform

-- Python

-- React / Javascript / Typescritp

-- Rust
