vim.keymap.set("i", "<C-s>", "<cmd>w<cr><Esc>", { desc = "insert mode, save file" })
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>", { desc = "normal mode, save file" })

vim.keymap.set("i", "<Tab>", function()
	return string.rep(" ", vim.opt.softtabstop:get())
end, { expr = true, noremap = true })

vim.keymap.set("n", "cc", "ggdG", { desc = "clear buffer" })

vim.keymap.set({ "n", "v" }, "<C-w>1", ":1wincmd c<cr>", { desc = "close window 1" })
vim.keymap.set({ "n", "v" }, "<C-w>2", ":2wincmd c<cr>", { desc = "close window 2" })
vim.keymap.set({ "n", "v" }, "<C-w>3", ":3wincmd c<cr>", { desc = "close window 3" })
vim.keymap.set({ "n", "v" }, "<C-w>4", ":4wincmd c<cr>", { desc = "close window 4" })
vim.keymap.set({ "n", "v" }, "<C-w>5", ":5wincmd c<cr>", { desc = "close window 5" })

vim.keymap.set("n", "wt", function()
	local count = vim.v.count
	if count == 0 then
		vim.cmd("tablast") -- or whatever you want for bare 'wt'
	else
		vim.cmd(count .. "tabnext")
	end
end, { desc = "Go to tab" })

vim.keymap.set("n", "ww", function()
	local count = vim.v.count
	if count == 0 then
		vim.cmd("wincmd w") -- default: go to next window
	else
		vim.cmd(count .. "wincmd w")
	end
end, { desc = "Go to window" })
