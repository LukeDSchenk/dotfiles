-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 16
config.color_scheme = 'Maraud Earth'

config.color_schemes = {
  ['Maraud Earth'] = {
    background = '#100D23',
    foreground = "#C592FF", -- text color.
    cursor_bg = "#00FF9C",
  },
}

config.keys = {
  -- Turn off the default CMD-m Hide action, allowing CMD-m to
  -- be potentially recognized and handled by the tab
  {
    key = 'F11',
    action = wezterm.action.ToggleFullScreen,
  },
}

-- Finally, return the configuration to wezterm:
return config
