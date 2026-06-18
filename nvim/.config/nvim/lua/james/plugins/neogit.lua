return {
	"NeogitOrg/neogit",
	lazy = true,
	cond = not vim.g.vscode,
	dependencies = {
		"ibhagwan/fzf-lua",
	},
	cmd = "Neogit",
	keys = {
		{ "<leader>g", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
	},
}
