local set = vim.opt

local rn = true
function Toggle_rn()
    set.relativenumber = rn
    rn = not rn
end

Toggle_rn()

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.autoindent = true

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 5
set.termguicolors = true

set.cursorline = true
set.colorcolumn = "80"
set.number = true

set.hidden = true
set.clipboard = "unnamedplus"
set.listchars = { eol = "§", tab = "¤›", extends = "»", precedes = "«", nbsp = "‡" }

local lst = false
function Toggle_list()
    set.list = lst
    lst = not lst
end

Toggle_list()
