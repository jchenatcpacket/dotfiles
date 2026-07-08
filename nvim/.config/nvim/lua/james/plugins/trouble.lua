return {
	"folke/trouble.nvim",
	cond = not vim.g.vscode,
	opts = {
		win = {
			position = "right",
			size = 0.3,
		},
	},
	cmd = "Trouble",
	keys = {
		{
			"<leader>t",
			"<cmd>Trouble symbols toggle focus=false<cr>",
			desc = "Symbols (Trouble)",
		},
	},
}
