return {
	"RRethy/vim-illuminate",
	config = function()
		require("illuminate").configure({
			filetypes_denylist = {
				"dirbuf",
				"dirvish",
				"NeogitStatus",
			},
		})

		vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = "#665c54" })
		vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = "#665c54" })
		vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = "#665c54" })
	end,
}
