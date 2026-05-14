return {
	"rachartier/tiny-cmdline.nvim",
	cond = not vim.g.vscode,
	config = function()
		require("vim._core.ui2").enable({})
		vim.o.cmdheight = 0
		require("tiny-cmdline").setup({
			on_reposition = require("tiny-cmdline").adapters.blink,
		})
		vim.api.nvim_set_hl(0, "TinyCmdlineBorder", { fg = "#ebdbb2" })
		vim.api.nvim_set_hl(0, "TinyCmdlineNormal", { bg = "#282828" })
	end,
}
