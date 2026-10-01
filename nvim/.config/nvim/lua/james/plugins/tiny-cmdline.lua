return {
	"rachartier/tiny-cmdline.nvim",
	config = function()
		require("vim._core.ui2").enable({})
		vim.o.cmdheight = 0
		require("tiny-cmdline").setup({
			on_reposition = require("tiny-cmdline").adapters.blink,
		})
	end,
}
