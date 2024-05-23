local dap = require("dap")
local dapui = require("dapui")
local set = vim.keymap.set

require("nvim-dap-virtual-text").setup()
require("dapui").setup()
require('dap-go').setup()

dap.adapters.go = function(callback, config)
    -- Wait for delve to start
    vim.defer_fn(function()
            callback({ type = "server", host = "127.0.0.1", port = "4000" })
        end,
        100)
end

dap.configurations.go = {
    {
        type = "go",
        name = "Debug",
        request = "launch",
        program = "${file}",
    },
    {
        type = "go",
        name = "Remote",
        request = "attach",
        mode = "remote",
        remotePath = "",
        port = "4000",
        host = "0.0.0.0",
        cwd = "${workspaceFolder}",
    },
}

set("n", "du", dapui.toggle, {})
set("n", "ds", dap.continue, {})
set("n", "db", dap.toggle_breakpoint, {})


vim.fn.sign_define("DapBreakpoint", { text = "🔴", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "→", texthl = "", linehl = "", numhl = "" })
