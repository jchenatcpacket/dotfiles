return {
	{
		"nvim-mini/mini.surround",
		version = "*",
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
}
