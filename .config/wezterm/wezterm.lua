local wezterm = require("wezterm")
local config = {
	font = wezterm.font("JetBrains Mono"),
	color_scheme = "Gruvbox Material (Gogh)",
	colors = {
		background = "#1D2021",
	},
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "RESIZE",
	font_size = 16,
	adjust_window_size_when_changing_font_size = false,
	audible_bell = "Disabled",

	keys = {
		-- panes
		{
			key = "|",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "Enter",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
	},
}

return config
-- vim: set ts=2 sw=2:
