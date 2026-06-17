return {
	"NeogitOrg/neogit",
	lazy = true,
	dependencies = {
		"m00qek/baleia.nvim",
		"ibhagwan/fzf-lua",
	},
	cmd = "Neogit",
	keys = {
		{ "<leader>g", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
	},
}
