require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "gopls",
        "golangci_lint_ls",
        "terraformls",
        "tflint",
        "ts_ls",
        "pylsp",
    },
    automatic_enable = false
})
