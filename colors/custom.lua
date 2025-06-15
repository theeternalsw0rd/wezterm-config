-- An altered version of tokyonight_night
-- stylua: ignore
local tokyonight = {
   lilac = 'rgb(215, 193, 244)',
   dark_lilac = 'rgb(32, 24, 35)',
   violet = 'rgb(59, 39, 86)',
   fuscia = 'rgb(255, 102, 219)',
   puce = 'rgb(51, 40, 63)',
   rosewater = 'rgb(245, 220, 227)',
   midnight = 'rgb(16, 5, 21)',
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
      'rgb(21, 22, 30)', -- black
      'rgb(247, 118, 142)', -- red
      'rgb(158, 206, 106)', -- green
      'rgb(224, 175, 104)', -- yellow
      'rgb(122, 162, 247)', -- blue
      'rgb(187, 154, 247)', -- magenta/purple
      'rgb(125, 207, 255)', -- cyan
      'rgb(169, 177, 214)', -- white
   },
   brights = {
      'rgb(65, 72, 104)', -- black
      'rgb(255, 137, 157)', -- red
      'rgb(159, 224, 68)', -- green
      'rgb(250, 186, 74)', -- yellow
      'rgb(141, 176, 255)', -- blue
      'rgb(199, 169, 255)', -- magenta/purple
      'rgb(164, 218, 255)', -- cyan
      'rgb(192, 202, 245)', -- white
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
