return {
	"xiyaowong/transparent.nvim",
	lazy = false,
	config = function()
		vim.cmd([[hi StatusLine ctermbg=0 cterm=NONE]])
		require("transparent").setup({ -- Optional, you don't have to run setup.
			groups = { -- table: default groups
				"Normal",
				"NormalNC",
				"Comment",
				"Constant",
				"Special",
				"Identifier",
				"Statement",
				"PreProc",
				"Type",
				"Underlined",
				"Todo",
				"String",
				"Function",
				"Conditional",
				"Repeat",
				"Operator",
				"Structure",
				"LineNr",
				"NonText",
				"SignColumn",
				"CursorLineNr",
				"EndOfBuffer",
				"InsertEnter",
			},
			extra_groups = {
				"CursorLine",
				"TablineFill",
				"NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
				"NvimTreeNormal", -- NvimTree
				"NvimTreeToggle",
				"NvimTree",
			}, -- table: additional groups that should be cleared
			exclude_groups = {}, -- table: groups you don't want to clear
		})
	end,
}
