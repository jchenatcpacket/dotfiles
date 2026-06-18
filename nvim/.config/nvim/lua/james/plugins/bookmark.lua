return {
	dir = "/home/jchen/bookmark",
	config = function()
		require("bookmarks").setup()
		local bm = require("bookmarks")
		vim.keymap.set("n", "<leader>bf", bm.bookmark_file, { desc = "Bookmark file" })
		vim.keymap.set("n", "<leader>bl", bm.toggle_line, { desc = "Toggle line bookmark" })
		vim.keymap.set("n", "<leader>bk", bm.bookmark_location, { desc = "Bookmark location" })
		vim.keymap.set("n", "<leader>bb", function()
			bm.open()
		end, { desc = "Open bookmarks" })
	end,
}
