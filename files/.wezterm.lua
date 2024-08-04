-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Abernathy'
config.font = wezterm.font('JetBrains Mono', {weight = 'Bold'})
config.font_size = 16
config.window_background_image = '/Users/yukihai/wez/OSTanArch.png'
config.window_background_image_hsb = {
	brightness = 0.4,
	hue = 1,
	saturation = 1.3
}

config.window_background_opacity = 0.9

-- and finally, return the configuration to wezterm
return config
