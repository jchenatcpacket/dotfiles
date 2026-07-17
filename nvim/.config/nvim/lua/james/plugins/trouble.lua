return {
	"folke/trouble.nvim",
	cond = not vim.g.vscode,
	opts = {
		follow = true, -- track & highlight the symbol under the cursor
		win = {
			position = "right",
			size = 0.3,
			wo = {
				-- make the current-symbol row (cursorline) stand out
				winhighlight = "CursorLine:Visual",
			},
		},
	},
	cmd = "Trouble",
	keys = {
		{
			"<leader>t",
			"<cmd>Trouble symbols toggle focus=false<cr>",
			desc = "Symbols (Trouble)",
		},
	},
}
