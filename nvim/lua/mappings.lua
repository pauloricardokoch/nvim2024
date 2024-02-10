local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- leader
vim.g.mapleader = " "
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- change panels
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-m>", "<C-^>", opts)
