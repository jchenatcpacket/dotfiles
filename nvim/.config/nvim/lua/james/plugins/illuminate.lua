return {
	"RRethy/vim-illuminate",
	cond = not vim.g.vscode,
	config = function()
		require("illuminate").configure({
			filetypes_denylist = {
				"dirbuf",
				"dirvish",
				"NeogitStatus",
			},
		})

			vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = "#504945" })
			vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = "#504945" })
			vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = "#504945" })
	end,
}
