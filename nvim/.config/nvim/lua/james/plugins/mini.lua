return {
	{
		"nvim-mini/mini.surround",
		version = "*",
		cond = not vim.g.vscode,
		config = function()
			require("mini.surround").setup({
				mappings = {
					add = "<C-r>a", -- Add surrounding in Normal and Visual modes
					delete = "<C-r>d", -- Delete surrounding
					find = "<C-r>f", -- Find surrounding (to the right)
					find_left = "<C-r>F", -- Find surrounding (to the left)
					highlight = "<C-r>v", -- Highlight surrounding
					replace = "<C-r>r", -- Replace surrounding
				},
			})
		end,
	},
}
