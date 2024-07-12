local wezterm = require("wezterm")
local config = {}

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0
config.macos_window_background_blur = 30
config.window_background_opacity = 0.90
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

return config
