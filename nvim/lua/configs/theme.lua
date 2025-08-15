local cmd = vim.cmd

require("catppuccin").setup({
    flavour = "mocha",             -- latte, frappe, macchiato, mocha
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = false,    -- shows the "~" characters after the end of buffers
    term_colors = true,            -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false,           -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15,         -- percentage of the shade to apply to the inactive window
    },
    no_italic = false,             -- Force no italic
    no_bold = false,               -- Force no bold
    no_underline = false,          -- Force no underline
    styles = {                     -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" },   -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = { "bold" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = { "italic" },
        operators = { "bold" },
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

function Set_Catppuccin()
    cmd [[ colorscheme catppuccin ]]
end

function Set_Lunaperche()
    cmd [[ colorscheme lunaperche ]]
    cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
end

function Set_Quiet()
    cmd [[ colorscheme quiet ]]
    cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
end

Set_Catppuccin()
