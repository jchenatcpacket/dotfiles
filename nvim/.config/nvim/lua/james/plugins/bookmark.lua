return {
    "jchenatcpacket/bookmark.nvim",
	config = function()
		require("bookmarks").setup({
			ui = {
				width = 0.9,
			},
		})
		local bm = require("bookmarks")
		vim.keymap.set("n", "<leader>bf", bm.bookmark_file, { desc = "Bookmark file" })
		vim.keymap.set("n", "<leader>bl", bm.toggle_line, { desc = "Toggle line bookmark" })
		vim.keymap.set("n", "<leader>bk", bm.bookmark_location, { desc = "Bookmark location" })
		vim.keymap.set("n", "<leader>bb", function()
			bm.open()
		end, { desc = "Open bookmarks" })
		vim.keymap.set("n", "]of", function()
			bm.jump_next("file")
		end, { desc = "Next file bookmark" })
		vim.keymap.set("n", "[of", function()
			bm.jump_prev("files")
		end, { desc = "Previous files bookmark" })
		vim.keymap.set("n", "]ol", function()
			bm.jump_next("line")
		end, { desc = "Next line bookmark" })
		vim.keymap.set("n", "[ol", function()
			bm.jump_prev("line")
		end, { desc = "Previous line bookmark" })
		vim.keymap.set("n", "]oc", function()
			bm.jump_next("location")
		end, { desc = "Next location bookmark" })
		vim.keymap.set("n", "[oc", function()
			bm.jump_prev("location")
		end, { desc = "Previous location bookmark" })
	end,
}
