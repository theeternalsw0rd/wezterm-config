-- An altered version of tokyonight_night
-- stylua: ignore
local tokyonight = {
   lilac = '#d7c1f4',
   dark_lilac = '#201823',
   violet = '#3b2756',
   fuscia = '#ff66db',
   puce = '#33283f',
   rosewater = '#f5dce3',
   midnight = '#100515',
}

local colorscheme = {
   foreground = tokyonight.lilac,
   background = tokyonight.dark_lilac,
   cursor_bg = tokyonight.lilac,
   cursor_border = tokyonight.lilac,
   cursor_fg = tokyonight.dark_lilac,
   selection_bg = tokyonight.violet,
   selection_fg = tokyonight.lilac,
   ansi = {
      '#15161e', -- black
      '#f7768e', -- red
      '#9ece6a', -- green
      '#e0af68', -- yellow
      '#7aa2f7', -- blue
      '#bb9af7', -- magenta/purple
      '#7dcfff', -- cyan
      '#a9b1d6', -- white
   },
   brights = {
      '#414868', -- black
      '#ff899d', -- red
      '#9fe044', -- green
      '#faba4a', -- yellow
      '#8db0ff', -- blue
      '#c7a9ff', -- magenta/purple
      '#a4daff', -- cyan
      '#c0caf5', -- white
   },
   tab_bar = {
      background = tokyonight.midnight,
      active_tab = {
         bg_color = tokyonight.violet,
         fg_color = tokyonight.lilac,
      },
      inactive_tab = {
         bg_color = tokyonight.dark_lilac,
         fg_color = tokyonight.lilac,
      },
      inactive_tab_hover = {
         bg_color = tokyonight.dark_lilac,
         fg_color = tokyonight.rosewater,
      },
      new_tab = {
         bg_color = tokyonight.violet,
         fg_color = tokyonight.lilac,
      },
      new_tab_hover = {
         bg_color = tokyonight.dark_lilac,
         fg_color = tokyonight.rosewater,
      },
   },
   visual_bell = tokyonight.rosewater,
   indexed = {
      [16] = tokyonight.lilac,
      [17] = tokyonight.rosewater,
   },
   scrollbar_thumb = tokyonight.puce,
   split = tokyonight.lilac,
   compose_cursor = tokyonight.fuscia,
}

return colorscheme
