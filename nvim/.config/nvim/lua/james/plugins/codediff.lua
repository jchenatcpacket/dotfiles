return {
	"esmuellert/codediff.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	cmd = "CodeDiff",
	opts = {
		keymaps = {
			view = {
				next_hunk = "]h", -- Jump to next change
				prev_hunk = "[h", -- Jump to previous change
				toggle_stage = "<leader>hS", -- Stage/unstage current file (works in explorer and diff buffers)
				stage_hunk = "<leader>hs", -- Stage hunk under cursor to git index
				unstage_hunk = "<leader>hu", -- Unstage hunk under cursor from git index
				discard_hunk = "<leader>hr", -- Discard hunk under cursor (working tree only)
			},
			conflict = {
				accept_incoming = "<leader>hct", -- Accept incoming (theirs/left) change
				accept_current = "<leader>hco", -- Accept current (ours/right) change
				accept_both = "<leader>hcb", -- Accept both changes (incoming first)
				discard = "<leader>hcx", -- Discard both, keep base
				next_conflict = "]x", -- Jump to next conflict
				prev_conflict = "[x", -- Jump to previous conflict
			},
		},
	},
}
