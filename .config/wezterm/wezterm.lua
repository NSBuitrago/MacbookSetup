local wezterm = require("wezterm")

local map_zellij_key = function(mods, key, mode, action)
	return {
		mods = mods,
		key = key,
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ mods = "CTRL", key = mode }),
			wezterm.action.SendKey({ key = action }),
		}),
	}
end

return {
	font = wezterm.font("JetBrains Mono"),
	font_size = 16,
	color_scheme = "Gruvbox Material (Gogh)",
	colors = {
		background = "#1E2425", -- use same background as nvim theme
	},
	enable_tab_bar = false,
	window_decorations = "RESIZE",
	adjust_window_size_when_changing_font_size = false,
	audible_bell = "Disabled",
	window_close_confirmation = "NeverPrompt",

	keys = {
		map_zellij_key("CMD", "t", "t", "n"), -- create new tab
		map_zellij_key("CMD", "w", "t", "x"), -- close tab
		-- move tab focus
		{
			mods = "CTRL",
			key = "Tab",
			action = wezterm.action.Multiple({
				wezterm.action.SendKey({ mods = "CTRL", key = "t" }),
				wezterm.action.SendKey({ key = "l" }),
				wezterm.action.SendKey({ key = "Return" }),
			}),
		},
		{
			mods = "CTRL|SHIFT",
			key = "Tab",
			action = wezterm.action.Multiple({
				wezterm.action.SendKey({ mods = "CTRL", key = "t" }),
				wezterm.action.SendKey({ key = "h" }),
				wezterm.action.SendKey({ key = "Return" }),
			}),
		},
		-- switch to tab by number
		map_zellij_key("CMD", "1", "t", "1"),
		map_zellij_key("CMD", "2", "t", "2"),
		map_zellij_key("CMD", "3", "t", "3"),
		map_zellij_key("CMD", "4", "t", "4"),
		map_zellij_key("CMD", "5", "t", "5"),
		map_zellij_key("CMD", "6", "t", "6"),
		map_zellij_key("CMD", "7", "t", "7"),
		map_zellij_key("CMD", "8", "t", "8"),
		map_zellij_key("CMD", "9", "t", "9"),

		map_zellij_key("CMD", "p", "p", "w"), -- quick floating pane

		map_zellij_key("CMD", "s", "p", "n"), -- create new pane

		-- move pane focus
		{
			mods = "CTRL",
			key = "l",
			action = wezterm.action.Multiple({
				wezterm.action.SendKey({ mods = "CTRL", key = "p" }),
				wezterm.action.SendKey({ key = "l" }),
				wezterm.action.SendKey({ key = "Return" }),
			}),
		},
		{
			mods = "CTRL",
			key = "h",
			action = wezterm.action.Multiple({
				wezterm.action.SendKey({ mods = "CTRL", key = "p" }),
				wezterm.action.SendKey({ key = "h" }),
				wezterm.action.SendKey({ key = "Return" }),
			}),
		},
		{
			mods = "CTRL",
			key = "j",
			action = wezterm.action.Multiple({
				wezterm.action.SendKey({ mods = "CTRL", key = "p" }),
				wezterm.action.SendKey({ key = "j" }),
				wezterm.action.SendKey({ key = "Return" }),
			}),
		},
		{
			mods = "CTRL",
			key = "k",
			action = wezterm.action.Multiple({
				wezterm.action.SendKey({ mods = "CTRL", key = "p" }),
				wezterm.action.SendKey({ key = "k" }),
				wezterm.action.SendKey({ key = "Return" }),
			}),
		},

		map_zellij_key("CMD", "x", "p", "x"), -- close pane
		map_zellij_key("CMD", "m", "o", "w"), -- session manager
		map_zellij_key("CMD", "d", "o", "d"), -- detach session
	},
}

-- vim: set ts=2 sw=2:
