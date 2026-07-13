vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.foldenable = false
vim.opt.termguicolors = true
vim.opt.swapfile = false

-- cursor shape + blinking (Neovim must request blink itself; Ghostty's
-- cursor-style-blink is ignored once an app drives the cursor via guicursor)
vim.o.guicursor = table.concat({
	"n-v-c:block-blinkwait1000-blinkon500-blinkoff500",
	"i-ci:ver25-blinkwait1000-blinkon500-blinkoff500",
	"r:hor50-blinkwait100-blinkon500-blinkoff500",
}, ",")

vim.api.nvim_create_user_command("SetIndent", function(opts)
	local width = tonumber(opts.args)

	if width ~= 2 and width ~= 4 then
		vim.api.nvim_err_writeln("Error: Indent must be either 2 or 4")
		return
	end

	vim.opt.tabstop = width
	vim.opt.softtabstop = width
	vim.opt.shiftwidth = width

	_G.indent_count = width
end, { nargs = 1, desc = "Set Indent spaces to either 2 or 4" })

vim.api.nvim_create_autocmd("VimEnter", { command = "SetIndent 4" })

-- -- highlight trailing whitespace (re-applied per window and after colorscheme changes)
-- local function set_trailing_hl()
-- 	vim.api.nvim_set_hl(0, "TrailingSpace", { ctermbg = 238, bg = "#4D0000" })
-- end
-- set_trailing_hl()
-- vim.api.nvim_create_autocmd("ColorScheme", { callback = set_trailing_hl })
-- vim.api.nvim_create_autocmd({ "BufWinEnter", "WinNew" }, {
-- 	callback = function()
-- 		-- avoid stacking duplicate matches on the same window
-- 		for _, m in ipairs(vim.fn.getmatches()) do
-- 			if m.group == "TrailingSpace" then
-- 				return
-- 			end
-- 		end
-- 		vim.fn.matchadd("TrailingSpace", [[\s\+$]])
-- 	end,
-- })

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		-- highlight on yank for vscode
		vim.highlight.on_yank({ timeout = 600 })

		-- copy to system clipboard
		local event = vim.v.event
		if event.operator == "y" and event.regname == "" then
			vim.fn.setreg("+", event.regcontents, event.regtype)
		end
	end,
})
