local builtin = require("telescope.builtin")
local tel = require("telescope")
local rf = require("telescope").load_extension("recent_files")
local set = vim.keymap.set

local function filenameFirst(_, path)
    local tail = vim.fs.basename(path)
    local parent = vim.fs.dirname(path)
    if parent == "." then return tail end
    return string.format("%s\t\t%s", tail, parent)
end

tel.setup {
    pickers = {
        find_files = {
            path_display = filenameFirst
        }
    }
}

-- telescope
set("n", "<leader>sf", builtin.find_files, {})
set("n", "<leader>st", tel.extensions.live_grep_args.live_grep_args, {})
set("n", "<leader>sb", builtin.buffers, {})
set("n", "<leader>sp", builtin.pickers, {})
set("n", "<leader>sr", builtin.resume, {})
set("n", "<leader>sw", builtin.grep_string, {})
set("n", "<leader>sh", builtin.help_tags, {})
set("n", "<leader>rf", rf.pick, {})
