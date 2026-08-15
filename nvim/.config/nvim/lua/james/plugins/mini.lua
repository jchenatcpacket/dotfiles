return {
	{
		"nvim-mini/mini.surround",
		version = "*",
		cond = not vim.g.vscode,
		config = function()
			require("mini.surround").setup({
				mappings = {
					add = "<C-r>a",
					delete = "<C-r>d",
					find = "<C-r>f",
					find_left = "<C-r>F",
					highlight = "<C-r>h",
					replace = "<C-r>r",
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
