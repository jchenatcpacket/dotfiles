return {
	"parwest/peeper-picker.nvim",
	main = "peeper_picker",
	cmd = "PeeperPicker",
	opts = {
		width = 82,
	},
	keys = {
		{ "<leader>pp", "<cmd>PeeperPicker<cr>", desc = "Peeper Picker" },
		{ "<leader>ph", "<cmd>PeeperPickerHistory<cr>", desc = "Peeper Picker History" },
	},
}
