local gpu_adapters = require('utils.gpu-adapter')
local platform = require('utils.platform')
local colors = require('colors.custom')

local options = {
   max_fps = 120,
   underline_thickness = 3,
   underline_position = -4,

   -- cursor
   animation_fps = 120,
   cursor_blink_ease_in = 'EaseOut',
   cursor_blink_ease_out = 'EaseOut',
   default_cursor_style = 'BlinkingBlock',
   cursor_blink_rate = 650,

   -- color scheme
   colors = colors,

   -- background
   -- use os solution for opacity, wezterm is not consistent
   -- window_background_opacity = 0.9,

   -- scrollbar
   enable_scroll_bar = true,

   -- tab bar
   enable_tab_bar = true,
   hide_tab_bar_if_only_one_tab = false,
   use_fancy_tab_bar = false,
   tab_max_width = 25,
   show_tab_index_in_tab_bar = false,
   switch_to_last_active_tab_when_closing_tab = true,

   -- window
   window_decorations = 'NONE',
   window_padding = {
      left = 20,
      right = 0,
      top = 10,
      bottom = 7.5,
   },
   adjust_window_size_when_changing_font_size = false,
   window_close_confirmation = 'NeverPrompt',
   window_frame = {
      active_titlebar_bg = '#090909',
      -- font = fonts.font,
      -- font_size = fonts.font_size,
   },
   -- inactive_pane_hsb = {
   --    saturation = 0.9,
   --    brightness = 0.65,
   -- },
   inactive_pane_hsb = {
      saturation = 1,
      brightness = 1,
   },

   visual_bell = {
      fade_in_function = 'EaseIn',
      fade_in_duration_ms = 250,
      fade_out_function = 'EaseOut',
      fade_out_duration_ms = 250,
      target = 'CursorColor',
   },
}

if platform.is_linux then
   options.front_end = 'OpenGL'
   options.enable_wayland = true
else
   options.front_end = 'WebGpu'
   options.webgpu_power_preference = 'HighPerformance'
   options.webgpu_preferred_adapter = gpu_adapters:pick_best()
   -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Dx12', 'IntegratedGpu')
   -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Gl', 'Other')
end

return options
