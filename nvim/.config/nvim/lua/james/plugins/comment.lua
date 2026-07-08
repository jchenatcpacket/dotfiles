return {
	"numToStr/Comment.nvim",
	cond = not vim.g.vscode,
	config = function()
		require("Comment").setup({})
	end,
}
