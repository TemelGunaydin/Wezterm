-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()


-- For example, changing the color scheme:
-- config.color_scheme = 'Cai (Gogh)'
-- config.color_scheme = 'Kasugano (terminal.sexy)'
-- config.color_scheme = 'Mariana'
-- config.color_scheme = 'terafox'
-- config.color_scheme = 's3r0 modified (terminal.sexy)'
-- config.color_scheme = 'Ocean'
-- config.color_scheme = 'Apathy (base16)'
-- config.color_scheme = 'HaX0R_BLUE'
config.color_scheme = 'Butrin (Gogh)'

local dimmer = {
  brightness = 0.1,
  saturation = 1,
  hue = 1.0,
}

config.background = {
  {
    source = {
      File = "/Users/temelgunaydin/Downloads/luffy.png",
    },
    hsb = dimmer,
    -- height = "Cover",
    -- width = "Cover",
    horizontal_align = "Center",
    vertical_align = "Bottom",
  }
}


-- config.window_background_image = '/Users/temelgunaydin/Downloads/lotr.jpg'
-- config.window_background_image_hsb = {
--   brightness = 0.05,
--   hue = 1.0,
--   saturation = 1.0,
-- }
--
config.font = wezterm.font('Berkeley Mono Trial', { weight = 'Regular', italic = false })
-- config.font = wezterm.font('JetBrains Mono', { weight = 'Regular', italic = false })
config.font_size = 20
config.initial_cols = 120
config.initial_rows = 30
config.tab_max_width = 40
config.use_fancy_tab_bar = false


-- and finally, return the configuration to wezterm
return config
