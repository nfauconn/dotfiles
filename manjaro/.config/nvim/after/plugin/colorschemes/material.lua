
--------------------------------------------------
--					MATERIAL					--
--------------------------------------------------

local material_status_ok, material = pcall(require, "material")
if not material_status_ok then
  return
end

material.setup({

    styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { --[[ italic = true ]] },
        strings = { --[[ bold = true ]] },
        keywords = { --[[ underline = true ]] },
        functions = { --[[ bold = true, undercurl = true ]] },
        variables = {},
        operators = {},
        types = {},
    },

    plugins = { -- Available plugins: "dap", "dashboard", "gitsigns", "hop", "indent-blankline", "lspsaga", "mini", "neogit", "neorg", "nvim-cmp", "nvim-navic", "nvim-tree", "nvim-web-devicons", "sneak", "telescope", "trouble", "which-key",
		"indent-blankline",
    },

    disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = false, -- Disable borders between verticaly split windows
        background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        background = true, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false -- Hide the end-of-buffer lines
    },
    lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )
    async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)
    custom_colors = nil, -- If you want to everride the default colors, set this to a function
    custom_highlights = {}, -- Overwrite highlights with your own
})

vim.cmd.colorscheme "material"
vim.g.material_style = "oceanic"
ColorTB("material")

