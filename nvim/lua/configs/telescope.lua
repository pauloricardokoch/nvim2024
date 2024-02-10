local builtin = require("telescope.builtin")
local tel = require("telescope")
local rf = require("telescope").load_extension("recent_files")
local set = vim.keymap.set

-- telescope
set("n", "<leader>sf", builtin.find_files, {})
set("n", "<leader>st", tel.extensions.live_grep_args.live_grep_args, {})
set("n", "<leader>sb", builtin.buffers, {})
set("n", "<leader>sp", builtin.pickers, {})
set("n", "<leader>sr", builtin.resume, {})
set("n", "<leader>sh", builtin.help_tags, {})
set("n", "<leader>rf", rf.pick, {})
