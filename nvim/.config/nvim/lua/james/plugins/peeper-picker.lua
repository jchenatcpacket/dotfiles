return {
	"parwest/peeper-picker.nvim",
	main = "peeper_picker",
	cmd = "PeeperPicker",
	opts = {
		width = 82,
	},
	keys = {
		{ "<leader>p", "<cmd>PeeperPicker<cr>", desc = "Peeper Picker" },
	},
}
