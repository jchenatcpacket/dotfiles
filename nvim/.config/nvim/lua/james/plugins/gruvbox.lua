return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	cond = not vim.g.vscode,
	config = function()
		require("gruvbox").setup({
			transparent_mode = true,
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
