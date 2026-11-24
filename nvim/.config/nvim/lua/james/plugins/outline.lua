return {
	"hedyhli/outline.nvim",
	config = function()
		require("outline").setup({
			outline_items = {
				show_symbol_lineno = true,
			},
		})
		vim.keymap.set("n", "<leader>o", "<cmd>Outline!<CR>", { desc = "Toggle Outline" })
	end,
}
