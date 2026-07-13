return {
	"NeogitOrg/neogit",
	lazy = true,
	cond = not vim.g.vscode,
	dependencies = {
		"ibhagwan/fzf-lua",
	},
	cmd = "Neogit",
	keys = {
		{ "<leader>gg", "<cmd>Neogit kind=floating<cr>", desc = "Show Neogit UI" },
	},
}
