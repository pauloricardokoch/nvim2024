local status, lspconfig = pcall(require, "lspconfig")
if not status then
    return
end

local protocol = require("vim.lsp.protocol")

local on_attach = function(client, bufnr)
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
lspconfig.gopls.setup {
    on_attach = on_attach,
    cmd = { 'gopls' },
    settings = {
        gopls = {
            analyses = {
                nilness = true,
                unusedparams = true,
                unusedwrite = true,
                useany = true,
            },
            experimentalPostfixCompletions = true,
            gofumpt = true,
            staticcheck = true,
            usePlaceholders = true,
        },
    },
}

-- Terraform
lspconfig.terraformls.setup {
    on_attach = on_attach
}
lspconfig.tflint.setup {
    on_attach = on_attach
}

-- Python

-- React / Javascript / Typescritp
lspconfig.tsserver.setup {
    on_attach = on_attach
}

-- Rust
local rust_on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    require "completion".on_attach(client)
end

lspconfig.rust_analyzer.setup({
    on_attach = rust_on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})

-- Python
lspconfig.pylsp.setup({
on_attach=on_attach
})
