local builtin = require("telescope.builtin")
local tel = require("telescope")
local set = vim.keymap.set

-- telescope
set("n", "<leader>sf", builtin.find_files, {})
-- set("n", "<leader>st", builtin.live_grep, {})
set("n", "<leader>st", tel.extensions.live_grep_args.live_grep_args, {})
set("n", "<leader>sb", builtin.buffers, {})
set("n", "<leader>sp", builtin.pickers, {})
set("n", "<leader>sr", builtin.resume, {})
set("n", "<leader>sh", builtin.help_tags, {})
