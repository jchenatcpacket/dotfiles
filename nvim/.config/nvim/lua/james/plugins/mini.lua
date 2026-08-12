return {
	{
		"nvim-mini/mini.surround",
		version = "*",
		cond = not vim.g.vscode,
		config = function()
			require("mini.surround").setup({
				mappings = {
					add = "<F2>", -- Add surrounding in Normal and Visual modes
					delete = "<F3>", -- Delete surrounding
					find = "gf", -- Find surrounding (to the right)
					find_left = "gF", -- Find surrounding (to the left)
					highlight = "gv", -- Highlight surroundwng
					replace = "<F4>", -- Replace surroundwng
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
