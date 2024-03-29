lua << EOF
local catppuccin = require('catppuccin')

local settings = {
    transparent_background = true,
    term_colors = false,
    styles = {
    	comments = "NONE",
    	functions = "NONE",
    	keywords = "NONE",
	    strings = "NONE",
    	variables = "NONE",
    },
    integrations = {
	    treesitter = true,
	    native_lsp = {
		    enabled = true,
		    virtual_text = {
		    	errors = "italic",
		    	hints = "italic",
	    		warnings = "italic",
	    		information = "italic",
	    	},
	    	underlines = {
	    		errors = "underline",
		    	hints = "underline",
		    	warnings = "underline",
	    		information = "underline",
	    	},
    	},
	    lsp_trouble = false,
    	cmp = true,
    	lsp_saga = false,
    	gitgutter = false,
    	gitsigns = true,
    	telescope = false,
    	nvimtree = {
	    	enabled = true,
	    	show_root = false,
	    	transparent_panel = false,
    	},
	    neotree = {
		    enabled = false,
    		show_root = false,
    		transparent_panel = false,
    	},
    	which_key = false,
    	indent_blankline = {
    		enabled = true,
	    	colored_indent_levels = false,
	    },
    	dashboard = false,
    	neogit = false,
    	vim_sneak = false,
    	fern = false,
    	barbar = false,
    	bufferline = false,
    	markdown = true,
    	lightspeed = false,
    	ts_rainbow = false,
    	hop = false,
    	notify = false,
    	telekasten = false,
    }
}
catppuccin.setup(settings)
EOF

colorscheme catppuccin
