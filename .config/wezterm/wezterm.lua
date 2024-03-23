local wezterm = require("wezterm")
local config = {
	font = wezterm.font("JetBrains Mono"),
	color_scheme = "Gruvbox Material (Gogh)",
	colors = {
		background = "#1D2021",
	},
	enable_tab_bar = true,
	window_decorations = "RESIZE",
	font_size = 16,
	adjust_window_size_when_changing_font_size = false,
}

return config
-- vim: set ts=2 sw=2:
