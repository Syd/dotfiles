-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- config starts here
config.color_scheme = '3024 (dark) (terminal.sexy)'
config.hide_tab_bar_if_only_one_tab = true
config.swallow_mouse_click_on_pane_focus = true
config.use_fancy_tab_bar = false
-- config.front_end = "OpenGL" -- options are OpenGL/Software/WebGpu
config.front_end = "WebGpu"

-- when using software:
-- config.animation_fps = 1
-- config.cursor_blink_ease_in = 'Constant'
-- config.cursor_blink_ease_out = 'Constant"

-- blinking cursor, set to 0 to save power on a laptop
config.cursor_blink_rate = 800
config.scrollback_lines = 20000 -- that's a lot, maybe you want less

config.visual_bell = {
  fade_in_duration_ms = 75,
  fade_out_duration_ms = 75,
  target = 'CursorColor',
}

-- webgpu
webgpu_power_preference = "HighPerformance" -- or LowPower

config.default_cursor_style = 'BlinkingBlock'
config.animation_fps = 20
return config
