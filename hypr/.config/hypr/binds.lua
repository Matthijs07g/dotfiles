--    __ __           __    _           __    
--   / //_/__  __  __/ /_  (_)___  ____/ /____
--  / ,< / _ \/ / / / __ \/ / __ \/ __  / ___/
-- / /| /  __/ /_/ / /_/ / / / / / /_/ (__  )
--/_/ |_\___/\__, /_.___/_/_/ /_/\__,_/____/
--          /____/

local mod = mainMod

-- Applications
hl.bind(mod .. " + Q",          hl.dsp.exec_cmd(terminal))
hl.bind(mod .. " + C",          hl.dsp.window.close())
hl.bind(mod .. " + E",          hl.dsp.exec_cmd(fileManager))
hl.bind(mod .. " + R",          hl.dsp.exec_cmd(menu))
hl.bind(mod .. " + SPACE",      hl.dsp.exec_cmd(browser))
hl.bind(mod .. " + D",          hl.dsp.exec_cmd("discord"))
hl.bind(mod .. " + SHIFT + M",  hl.dsp.exec_cmd("spotify-launcher"))

-- Window management
hl.bind(mod .. " + V",          hl.dsp.window.float({ action = "toggle" }))
hl.bind(mod .. " + P",          hl.dsp.layout_msg("togglesplit"))
hl.bind(mod .. " + J",          hl.dsp.layout_msg("togglesplit"))

-- System
hl.bind(mod .. " + M",          hl.dsp.exec_cmd("hyprctl dispatch exit"))
hl.bind(mod .. " + SHIFT + CTRL + R",  hl.dsp.exec_cmd("reboot"))
hl.bind(mod .. " + SHIFT + CTRL + Return", hl.dsp.exec_cmd("shutdown now"))
hl.bind(mod .. " + SHIFT + R",  hl.dsp.exec_cmd("hyprctl reload"))

-- Clipboard
hl.bind(mod .. " + SHIFT + V",  hl.dsp.exec_cmd("cliphist list | wofi --dmenu | cliphist decode | wl-copy"))
hl.bind(mod .. " + SHIFT + C",  hl.dsp.exec_cmd("cliphist wipe"))

-- Focus
hl.bind(mod .. " + left",       hl.dsp.window.move_focus("l"))
hl.bind(mod .. " + right",      hl.dsp.window.move_focus("r"))
hl.bind(mod .. " + up",         hl.dsp.window.move_focus("u"))
hl.bind(mod .. " + down",       hl.dsp.window.move_focus("d"))

-- Workspaces
for i = 1, 9 do
    hl.bind(mod .. " + " .. i,          hl.dsp.workspace.goto(i))
    hl.bind(mod .. " + SHIFT + " .. i,  hl.dsp.workspace.move_window(i))
end
hl.bind(mod .. " + 0",          hl.dsp.workspace.goto(10))
hl.bind(mod .. " + SHIFT + 0",  hl.dsp.workspace.move_window(10))

-- Special workspace
hl.bind(mod .. " + S",          hl.dsp.workspace.toggle_special("magic"))
hl.bind(mod .. " + SHIFT + S",  hl.dsp.workspace.move_window("special:magic"))

-- Scroll workspaces
hl.bind(mod .. " + mouse_down", hl.dsp.workspace.relative(1))
hl.bind(mod .. " + mouse_up",   hl.dsp.workspace.relative(-1))

-- Move/resize with mouse
hl.bind(mod .. " + mouse:272",  hl.dsp.window.move())
hl.bind(mod .. " + mouse:273",  hl.dsp.window.resize())

-- Media keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"))
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"))
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"))
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"))

-- Playerctl
hl.bind("XF86AudioNext",        hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPause",       hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPlay",        hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPrev",        hl.dsp.exec_cmd("playerctl previous"))