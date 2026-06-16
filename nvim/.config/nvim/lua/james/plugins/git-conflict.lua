return {
	"akinsho/git-conflict.nvim",
	version = "*",
	cond = not vim.g.vscode,
	config = function()
		require("git-conflict").setup({
			disable_diagnostics = true,
			default_mappings = {
				ours = "<leader>go",
				theirs = "<leader>gt",
				none = "<leader>gn",
				both = "<leader>gb",
				next = "]g",
				prev = "[g",
			},
		})
	end,
}
