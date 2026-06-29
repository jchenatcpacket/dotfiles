return {
	"akinsho/git-conflict.nvim",
	version = "*",
	cond = not vim.g.vscode,
	config = function()
		vim.api.nvim_set_hl(0, "GitConflictCurrentLabel", { bg = "#2a5c64" }) -- Current header
		vim.api.nvim_set_hl(0, "GitConflictCurrent", { bg = "#29444c" }) -- Current body
		vim.api.nvim_set_hl(0, "GitConflictIncomingLabel", { bg = "#48604a" }) -- Incoming header
		vim.api.nvim_set_hl(0, "GitConflictIncoming", { bg = "#38463f" }) -- Incoming body
		require("git-conflict").setup({})
		vim.keymap.set("n", "<leader>xl", "<Plug>(GitConflictListQf)", { desc = "git conflict list conflicts" })
		vim.keymap.set("n", "<leader>xc", "<Plug>(git-conflict-ours)", { desc = "git conflict choose current" })
		vim.keymap.set("n", "<leader>xi", "<Plug>(git-conflict-theirs)", { desc = "git conflict choose incoming" })
		vim.keymap.set("n", "<leader>xb", "<Plug>(git-conflict-both)", { desc = "git conflict choose both" })
		vim.keymap.set("n", "<leader>xo", "<Plug>(git-conflict-none)", { desc = "git conflict choose none" })
		vim.keymap.set("n", "[x", "<Plug>(git-conflict-prev-conflict)", { desc = "git conflict goto next conflict" })
		vim.keymap.set("n", "]x", "<Plug>(git-conflict-next-conflict)", { desc = "git conflict goto prev conflict" })
	end,
}
