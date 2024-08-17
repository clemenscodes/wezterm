local wezterm = require('wezterm')
local gpus = wezterm.gui.enumerate_gpus()

return {
   color_scheme = "catppuccin-macchiato",
   enable_tab_bar = false,
   animation_fps = 240,
   max_fps = 240,
   audible_bell = "Disabled",
   window_close_confirmation = 'NeverPrompt',
   win32_system_backdrop = 'Acrylic', -- Does not work with WebGpu frontend
   window_background_opacity = 0.8,
   window_padding = {
     left = 0,
     right = 0,
     top = 0,
     bottom = 0,
   },
   front_end = 'WebGpu',
   webgpu_power_preference = "HighPerformance",
   webgpu_preferred_adapter = gpus[4],
}
