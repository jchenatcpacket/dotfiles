return {
	{
		"nvim-mini/mini.surround",
		version = "*",
		cond = not vim.g.vscode,
		config = function()
			require("mini.surround").setup({
				mappings = {
					add = "ga", -- Add surrounding in Normal and Visual modes
					delete = "gd", -- Delete surrounding
					find = "gf", -- Find surrounding (to the right)
					find_left = "gF", -- Find surrounding (to the left)
					highlight = "gv", -- Highlight surrounding
					replace = "gp", -- Replace surrounding
				},
			})
		end,
	},
	{
		"nvim-mini/mini.pairs",
		version = "*",
		config = function()
			require("mini.pairs").setup()
		end,
	},
}
