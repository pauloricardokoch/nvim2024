coq = require("coq")
vim.cmd("COQnow -s")

-- overwrite COQ keymaps
vim.g.coq_settings = {
    keymap = {
        jump_to_mark = "",
    },
}
