-- Adwaita theme for Awesome 3.5
-- Copyright (C) 2016 Tuomas Jormola <tj@solitudo.net>
--
-- Licensed under the terms of GNU General Public License Version 2.0.
--
-- Designed to be used with the default GTK+ 3 theme.
-- freedesktop.org module for Awesome is required for the icon support.
--
-- Theme also uses Inconsolata font. On Ubuntu system this font
-- is available in the package fonts-inconsolata.

local awful = require('awful')
local freedesktop = { utils = require('freedesktop.utils') }

local theme = {}

-- Icon theme and font
freedesktop.utils.icon_theme                    = 'Adawaita'
theme.icon_theme                                = freedesktop.utils.icon_theme
theme.font                                      = 'Inconsolata Medium 12'
theme.monospace_font                            = theme.font

-- Colors
theme.bg_focus                                  = '#4a90d9'
theme.bg_normal                                 = '#ededed'
theme.bg_urgent                                 = '#7f55d7'
theme.bg_minimize                               = '#313739'
theme.bg_systray                                = theme.bg_normal

theme.fg_normal                                 = '#2e3436'
theme.fg_focus                                  = theme.fg_normal
theme.fg_urgent                                 = theme.fg_normal
theme.fg_minimize                               = '#f4f4f2'

theme.border_normal                             = '#000000'
theme.border_focus                              = theme.bg_focus
theme.border_marked                             = theme.bg_urgent

theme.bg_widget                                 = theme.bg_normal
theme.fg_widget                                 = '#00a2fe'
theme.fg_center_widget                          = '#0066e5'
theme.fg_end_widget                             = '#0017ed'

theme.tooltip_bg_color                          = '#343434'
theme.tooltip_fg_color                          = '#ffffff'

-- Misc. settings
theme.wallpaper_cmd                             = { 'xsetroot -solid \\#40659f' }
theme.taglist_squares                           = 'true'
theme.titlebar_close_button                     = 'true'
theme.border_width                              = '1'
theme.menu_height                               = '16'
theme.menu_width                                = '250'

-- Use default images for layout, tasklist, taglist and menu submenus
theme.layout_fairh                              = '/usr/share/awesome/themes/default/layouts/fairh.png'
theme.layout_fairv                              = '/usr/share/awesome/themes/default/layouts/fairv.png'
theme.layout_floating                           = '/usr/share/awesome/themes/default/layouts/floating.png'
theme.layout_magnifier                          = '/usr/share/awesome/themes/default/layouts/magnifier.png'
theme.layout_max                                = '/usr/share/awesome/themes/default/layouts/max.png'
theme.layout_fullscreen                         = '/usr/share/awesome/themes/default/layouts/fullscreen.png'
theme.layout_tilebottom                         = '/usr/share/awesome/themes/default/layouts/tilebottom.png'
theme.layout_tileleft                           = '/usr/share/awesome/themes/default/layouts/tileleft.png'
theme.layout_tile                               = '/usr/share/awesome/themes/default/layouts/tile.png'
theme.layout_tiletop                            = '/usr/share/awesome/themes/default/layouts/tiletop.png'
theme.layout_spiral                             = '/usr/share/awesome/themes/default/layouts/spiral.png'
theme.layout_dwindle                            = '/usr/share/awesome/themes/default/layouts/dwindle.png'

theme.taglist_squares_sel                       = '/usr/share/awesome/themes/default/taglist/squarefw.png'
theme.taglist_squares_unsel                     = '/usr/share/awesome/themes/default/taglist/squarew.png'

theme.tasklist_floating_icon                    = '/usr/share/awesome/themes/default/layouts/floating.png'

theme.menu_submenu_icon                         = '/usr/share/awesome/themes/default/submenu.png'

-- Awesome icon
theme.awesome_icon                              = '/usr/share/awesome/icons/awesome16.png'

-- Titlebar images
theme.titlebar_close_button_normal              = '/usr/share/awesome/themes/default/titlebar/close_normal.png'
theme.titlebar_close_button_focus               = '/usr/share/awesome/themes/default/titlebar/close_focus.png'

theme.titlebar_ontop_button_normal_inactive     = '/usr/share/awesome/themes/default/titlebar/ontop_normal_inactive.png'
theme.titlebar_ontop_button_focus_inactive      = '/usr/share/awesome/themes/default/titlebar/ontop_focus_inactive.png'
theme.titlebar_ontop_button_normal_active       = '/usr/share/awesome/themes/default/titlebar/ontop_normal_active.png'
theme.titlebar_ontop_button_focus_active        = '/usr/share/awesome/themes/default/titlebar/ontop_focus_active.png'

theme.titlebar_sticky_button_normal_inactive    = '/usr/share/awesome/themes/default/titlebar/sticky_normal_inactive.png'
theme.titlebar_sticky_button_focus_inactive     = '/usr/share/awesome/themes/default/titlebar/sticky_focus_inactive.png'
theme.titlebar_sticky_button_normal_active      = '/usr/share/awesome/themes/default/titlebar/sticky_normal_active.png'
theme.titlebar_sticky_button_focus_active       = '/usr/share/awesome/themes/default/titlebar/sticky_focus_active.png'

theme.titlebar_floating_button_normal_inactive  = '/usr/share/awesome/themes/default/titlebar/floating_normal_inactive.png'
theme.titlebar_floating_button_focus_inactive   = '/usr/share/awesome/themes/default/titlebar/floating_focus_inactive.png'
theme.titlebar_floating_button_normal_active    = '/usr/share/awesome/themes/default/titlebar/floating_normal_active.png'
theme.titlebar_floating_button_focus_active     = '/usr/share/awesome/themes/default/titlebar/floating_focus_active.png'

theme.titlebar_maximized_button_normal_inactive = '/usr/share/awesome/themes/default/titlebar/maximized_normal_inactive.png'
theme.titlebar_maximized_button_focus_inactive  = '/usr/share/awesome/themes/default/titlebar/maximized_focus_inactive.png'
theme.titlebar_maximized_button_normal_active   = '/usr/share/awesome/themes/default/titlebar/maximized_normal_active.png'
theme.titlebar_maximized_button_focus_active    = '/usr/share/awesome/themes/default/titlebar/maximized_focus_active.png'

-- Delightful Widget icons
-- Generic icons
theme.delightful_error                          = '/usr/share/icons/Adwaita/16x16/status/dialog-error.png'
theme.delightful_not_found                      = '/usr/share/icons/gnome/16x16/status/dialog-question.png'

-- CPU widget
theme.delightful_cpu                            = '/usr/share/icons/hicolor/22x22/devices/sensors-applet-cpu.png'

-- Memory widget
theme.delightful_memory                         = '/usr/share/icons/hicolor/22x22/devices/sensors-applet-memory.png'

-- Battery widget
theme.delightful_battery_ac                     = '/usr/share/icons/gnome/16x16/actions/help-about.png'
theme.delightful_battery_full                   = '/usr/share/icons/gnome/16x16/devices/battery.png'
theme.delightful_battery_medium                 = '/usr/share/icons/gnome/16x16/status/battery-low.png'
theme.delightful_battery_low                    = '/usr/share/icons/gnome/16x16/status/battery-caution.png'

-- IMAP widget
theme.delightful_imap_mail_read                 = '/usr/share/icons/gnome/32x32/status/stock_mail-open.png'
theme.delightful_imap_mail_unread               = '/usr/share/icons/gnome/32x32/status/stock_mail-unread.png'

-- Network widget
theme.delightful_network_dialup                 = '/usr/share/icons/gnome/16x16/devices/modem.png'
theme.delightful_network_wired                  = '/usr/share/icons/gnome/16x16/devices/network-wired.png'
theme.delightful_network_wireless               = '/usr/share/icons/gnome/16x16/devices/network-wireless.png'

-- Volume widget
theme.delightful_vol                            = '/usr/shape/icons/gnome/16x16/status/multimedia-volume-control.png'
theme.delightful_vol_max                        = '/usr/share/icons/gnome/16x16/status/audio-volume-high.png'
theme.delightful_vol_med                        = '/usr/share/icons/gnome/16x16/status/audio-volume-medium.png'
theme.delightful_vol_min                        = '/usr/share/icons/gnome/16x16/status/audio-volume-low.png'
theme.delightful_vol_zero                       = '/usr/share/icons/gnome/16x16/status/audio-volume-low.png'
theme.delightful_vol_mute                       = '/usr/share/icons/gnome/16x16/status/audio-volume-muted.png'

-- Weather widget
theme.delightful_weather_clear                  = '/usr/share/icons/gnome/16x16/status/weather-clear.png'
theme.delightful_weather_clear_night            = '/usr/share/icons/gnome/16x16/status/weather-clear-night.png'
theme.delightful_weather_clear_night_000        = '/usr/share/icons/mate/16x16/status/weather-clear-night-000.png'
theme.delightful_weather_clear_night_010        = '/usr/share/icons/mate/16x16/status/weather-clear-night-010.png'
theme.delightful_weather_clear_night_020        = '/usr/share/icons/mate/16x16/status/weather-clear-night-020.png'
theme.delightful_weather_clear_night_030        = '/usr/share/icons/mate/16x16/status/weather-clear-night-030.png'
theme.delightful_weather_clear_night_040        = '/usr/share/icons/mate/16x16/status/weather-clear-night-040.png'
theme.delightful_weather_clear_night_050        = '/usr/share/icons/mate/16x16/status/weather-clear-night-050.png'
theme.delightful_weather_clear_night_060        = '/usr/share/icons/mate/16x16/status/weather-clear-night-060.png'
theme.delightful_weather_clear_night_070        = '/usr/share/icons/mate/16x16/status/weather-clear-night-070.png'
theme.delightful_weather_clear_night_080        = '/usr/share/icons/mate/16x16/status/weather-clear-night-080.png'
theme.delightful_weather_clear_night_090        = '/usr/share/icons/mate/16x16/status/weather-clear-night-090.png'
theme.delightful_weather_clear_night_100        = '/usr/share/icons/mate/16x16/status/weather-clear-night-100.png'
theme.delightful_weather_clear_night_110        = '/usr/share/icons/mate/16x16/status/weather-clear-night-110.png'
theme.delightful_weather_clear_night_120        = '/usr/share/icons/mate/16x16/status/weather-clear-night-120.png'
theme.delightful_weather_clear_night_130        = '/usr/share/icons/mate/16x16/status/weather-clear-night-130.png'
theme.delightful_weather_clear_night_140        = '/usr/share/icons/mate/16x16/status/weather-clear-night-140.png'
theme.delightful_weather_clear_night_150        = '/usr/share/icons/mate/16x16/status/weather-clear-night-150.png'
theme.delightful_weather_clear_night_160        = '/usr/share/icons/mate/16x16/status/weather-clear-night-160.png'
theme.delightful_weather_clear_night_170        = '/usr/share/icons/mate/16x16/status/weather-clear-night-170.png'
theme.delightful_weather_clear_night_190        = '/usr/share/icons/mate/16x16/status/weather-clear-night-190.png'
theme.delightful_weather_clear_night_200        = '/usr/share/icons/mate/16x16/status/weather-clear-night-200.png'
theme.delightful_weather_clear_night_210        = '/usr/share/icons/mate/16x16/status/weather-clear-night-210.png'
theme.delightful_weather_clear_night_220        = '/usr/share/icons/mate/16x16/status/weather-clear-night-220.png'
theme.delightful_weather_clear_night_230        = '/usr/share/icons/mate/16x16/status/weather-clear-night-230.png'
theme.delightful_weather_clear_night_240        = '/usr/share/icons/mate/16x16/status/weather-clear-night-240.png'
theme.delightful_weather_clear_night_250        = '/usr/share/icons/mate/16x16/status/weather-clear-night-250.png'
theme.delightful_weather_clear_night_260        = '/usr/share/icons/mate/16x16/status/weather-clear-night-260.png'
theme.delightful_weather_clear_night_270        = '/usr/share/icons/mate/16x16/status/weather-clear-night-270.png'
theme.delightful_weather_clear_night_280        = '/usr/share/icons/mate/16x16/status/weather-clear-night-280.png'
theme.delightful_weather_clear_night_290        = '/usr/share/icons/mate/16x16/status/weather-clear-night-290.png'
theme.delightful_weather_clear_night_300        = '/usr/share/icons/mate/16x16/status/weather-clear-night-300.png'
theme.delightful_weather_clear_night_310        = '/usr/share/icons/mate/16x16/status/weather-clear-night-310.png'
theme.delightful_weather_clear_night_320        = '/usr/share/icons/mate/16x16/status/weather-clear-night-320.png'
theme.delightful_weather_clear_night_330        = '/usr/share/icons/mate/16x16/status/weather-clear-night-330.png'
theme.delightful_weather_clear_night_340        = '/usr/share/icons/mate/16x16/status/weather-clear-night-340.png'
theme.delightful_weather_clear_night_350        = '/usr/share/icons/mate/16x16/status/weather-clear-night-350.png'
theme.delightful_weather_few_clouds             = '/usr/share/icons/gnome/16x16/status/weather-few-clouds.png'
theme.delightful_weather_few_clouds_night       = '/usr/share/icons/gnome/16x16/status/weather-few-clouds-night.png'
theme.delightful_weather_few_clouds_night_000   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-000.png'
theme.delightful_weather_few_clouds_night_010   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-010.png'
theme.delightful_weather_few_clouds_night_020   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-020.png'
theme.delightful_weather_few_clouds_night_030   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-030.png'
theme.delightful_weather_few_clouds_night_040   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-040.png'
theme.delightful_weather_few_clouds_night_050   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-050.png'
theme.delightful_weather_few_clouds_night_060   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-060.png'
theme.delightful_weather_few_clouds_night_070   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-070.png'
theme.delightful_weather_few_clouds_night_080   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-080.png'
theme.delightful_weather_few_clouds_night_090   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-090.png'
theme.delightful_weather_few_clouds_night_100   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-100.png'
theme.delightful_weather_few_clouds_night_110   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-110.png'
theme.delightful_weather_few_clouds_night_120   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-120.png'
theme.delightful_weather_few_clouds_night_130   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-130.png'
theme.delightful_weather_few_clouds_night_140   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-140.png'
theme.delightful_weather_few_clouds_night_150   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-150.png'
theme.delightful_weather_few_clouds_night_160   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-160.png'
theme.delightful_weather_few_clouds_night_170   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-170.png'
theme.delightful_weather_few_clouds_night_190   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-190.png'
theme.delightful_weather_few_clouds_night_200   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-200.png'
theme.delightful_weather_few_clouds_night_210   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-210.png'
theme.delightful_weather_few_clouds_night_220   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-220.png'
theme.delightful_weather_few_clouds_night_230   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-230.png'
theme.delightful_weather_few_clouds_night_240   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-240.png'
theme.delightful_weather_few_clouds_night_250   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-250.png'
theme.delightful_weather_few_clouds_night_260   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-260.png'
theme.delightful_weather_few_clouds_night_270   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-270.png'
theme.delightful_weather_few_clouds_night_280   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-280.png'
theme.delightful_weather_few_clouds_night_290   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-290.png'
theme.delightful_weather_few_clouds_night_300   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-300.png'
theme.delightful_weather_few_clouds_night_310   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-310.png'
theme.delightful_weather_few_clouds_night_320   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-320.png'
theme.delightful_weather_few_clouds_night_330   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-330.png'
theme.delightful_weather_few_clouds_night_340   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-340.png'
theme.delightful_weather_few_clouds_night_350   = '/usr/share/icons/mate/16x16/status/weather-few-clouds-night-350.png'
theme.delightful_weather_fog                    = '/usr/share/icons/gnome/16x16/status/weather-fog.png'
theme.delightful_weather_overcast               = '/usr/share/icons/gnome/16x16/status/weather-overcast.png'
theme.delightful_weather_showers                = '/usr/share/icons/gnome/16x16/status/weather-showers.png'
theme.delightful_weather_scattered_showers      = '/usr/share/icons/gnome/16x16/status/weather-showers-scattered.png'
theme.delightful_weather_snow                   = '/usr/share/icons/gnome/16x16/status/weather-snow.png'
theme.delightful_weather_strom                  = '/usr/share/icons/gnome/16x16/status/weather-storm.png'
theme.delightful_weather_alert                  = '/usr/share/icons/gnome/16x16/status/weather-severe-alert.png'

return theme
