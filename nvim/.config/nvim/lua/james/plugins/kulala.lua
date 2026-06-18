return {
	"mistweaverco/kulala.nvim",
	ft = { "http", "rest" },
	cond = not vim.g.vscode,
	config = function()
		local kulala = require("kulala")

		kulala.setup({
			-- contenttypes = {
			-- 	["application/json"] = {
			-- 		ft = "json",
			-- 		formatter = vim.fn.executable("jq") == 1 and { "jq", "." },
			-- 		pathresolver = function(...)
			-- 			return require("kulala.parser.jsonpath").parse(...)
			-- 		end,
			-- 	},
			-- },
		})

		vim.keymap.set({ "n", "v" }, "<leader>ks", function()
			kulala.run()
		end, { desc = "Send request" })

		vim.keymap.set({ "n", "v" }, "<leader>kq", function()
			kulala.close()
		end, { desc = "close" })

		vim.keymap.set({ "n", "v" }, "<leader>ki", function()
			kulala.copy()
		end, { desc = "copy current request to clipboard as curl command" })

		vim.keymap.set({ "n", "v" }, "<leader>ke", function()
			kulala.from_curl()
		end, { desc = "paste from clipboard as curl command" })
	end,
}
