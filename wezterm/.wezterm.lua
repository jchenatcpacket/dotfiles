local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

config.color_scheme = "catppuccin-macchiato"

config.window_background_opacity = 0.87

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 11
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.default_domain = "WSL:Ubuntu"

config.wsl_domains = {
	{
		name = "WSL:Ubuntu",
		distribution = "Ubuntu",
		default_cwd = "~",
		default_prog = { "/home/linuxbrew/.linuxbrew/bin/fish", "-l" },
	},
}

config.automatically_reload_config = true

config.window_close_confirmation = "NeverPrompt"

config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }

config.keys = {
	{
		key = 'v',
		mods = "LEADER",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "LEADER",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
}

return config
