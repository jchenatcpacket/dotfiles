return {
	"dmtrKovalenko/fff.nvim",
	build = function()
		require("fff.download").download_or_build_binary()
	end,
	opts = {
		layout = {
			prompt_position = "top", -- or 'top'
			border = "single", -- 'single' | 'double' | 'rounded' | 'solid' | 'shadow' | 'none'
		},
		debug = {
			enabled = true,
			show_scores = true,
		},
	},
	lazy = false, -- the plugin lazy-initialises itself
	keys = {
		{
			"<leader>zf",
			function()
				require("fff").find_files()
			end,
			desc = "grep files",
		},
		{
			"<leader>zp",
			function()
				require("fff").live_grep()
			end,
			desc = "grep project",
		},
		{
			"<leader>zw",
			function()
				require("fff").live_grep_under_cursor()
			end,
			mode = { "n", "x" },
			desc = "grep cword/visual",
		},
	},
}
