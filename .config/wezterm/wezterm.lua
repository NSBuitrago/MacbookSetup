local wezterm = require("wezterm")

local map_tmux_key = function(mods, key, action)
	return {
		mods = mods,
		key = key,
		action = wezterm.action.Multiple({
			wezterm.action.SendKey({ mods = "CTRL", key = "b" }),
			wezterm.action.SendKey({ key = action }),
		}),
	}
end

return {
	font = wezterm.font("JetBrains Mono"),
	font_size = 16,
	color_scheme = "Gruvbox Material (Gogh)",
	colors = {
		background = "#1D2021", -- use same background as nvim theme
	},
	enable_tab_bar = false,
	window_decorations = "RESIZE",
	adjust_window_size_when_changing_font_size = false,
	audible_bell = "Disabled",
	window_close_confirmation = "NeverPrompt",
	max_fps = 120,
	keys = {
		-- tmux bindings
		map_tmux_key("CMD", "t", "c"), -- create new window
		map_tmux_key("CTRL", "Tab", "n"), -- move to next window
		map_tmux_key("CTRL|SHIFT", "Tab", "p"), -- move to previous window
		map_tmux_key("CMD", "s", '"'), -- create horizontal split
		map_tmux_key("CMD|SHIFT", "s", "%"), -- create vertical split
		map_tmux_key("CMD|SHIFT", "!", "!"), -- convert pane to window
		map_tmux_key("CMD", "w", "x"), -- close pane
		map_tmux_key("CMD|SHIFT", "w", "&"), -- close window
		map_tmux_key("CMD|SHIFT", "r", "$"), -- rename session
		map_tmux_key("CMD", "r", ","), -- rename window
		map_tmux_key("CMD", "p", "s"), -- show all sessions
		map_tmux_key("CMD", "d", "d"), -- detach from session
		-- switch to window by number
		map_tmux_key("CMD", "0", "0"),
		map_tmux_key("CMD", "1", "1"),
		map_tmux_key("CMD", "2", "2"),
		map_tmux_key("CMD", "3", "3"),
		map_tmux_key("CMD", "4", "4"),
		map_tmux_key("CMD", "5", "5"),
		map_tmux_key("CMD", "6", "6"),
		map_tmux_key("CMD", "7", "8"),
		map_tmux_key("CMD", "9", "9"),
	},
}
-- vim: set ts=2 sw=2:
