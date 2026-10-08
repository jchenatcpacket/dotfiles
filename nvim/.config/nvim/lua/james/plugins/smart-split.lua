return {
	"mrjones2014/smart-splits.nvim",
	config = function()
		local ss = require("smart-splits")
		ss.setup({})
		vim.keymap.set("n", "<A-h>", ss.resize_left, { desc = "Resize window left" })
		vim.keymap.set("n", "<A-j>", ss.resize_down, { desc = "Resize window down" })
		vim.keymap.set("n", "<A-k>", ss.resize_up, { desc = "Resize window up" })
		vim.keymap.set("n", "<A-l>", ss.resize_right, { desc = "Resize window right" })

		vim.keymap.set("n", "<C-h>", ss.move_cursor_left, { desc = "Move to left window" })
		vim.keymap.set("n", "<C-j>", ss.move_cursor_down, { desc = "Move to lower window" })
		vim.keymap.set("n", "<C-k>", ss.move_cursor_up, { desc = "Move to upper window" })
		vim.keymap.set("n", "<C-l>", ss.move_cursor_right, { desc = "Move to right window" })

		vim.keymap.set("n", "<A-w>l", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
		vim.keymap.set("n", "<A-w>j", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
		vim.keymap.set("n", "<A-w>k", "<cmd>resize +2<CR>", { desc = "Increase window height" })
		vim.keymap.set("n", "<A-w>h", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })
	end,
}
