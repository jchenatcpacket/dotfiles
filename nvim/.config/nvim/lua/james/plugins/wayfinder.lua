return {
	"error311/wayfinder.nvim",
	cond = not vim.g.vscode,
	config = function()
		require("wayfinder").setup({})
		vim.keymap.set("n", "<leader>w", "<Plug>(WayfinderOpen)", { desc = "Wayfinder" })
	end,
}
