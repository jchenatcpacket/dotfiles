local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

config.color_scheme = "catppuccin-macchiato"

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 11
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.default_domain = "WSL:Ubuntu"

config.wsl_domains = {
	{
		name = "WSL:Ubuntu",
		distribution = "Ubuntu",
		default_cwd = "~",
	},
}

config.automatically_reload_config = true

config.window_close_confirmation = "NeverPrompt"

return config
