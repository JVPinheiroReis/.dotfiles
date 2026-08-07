local headers = require("headers")

----------------------
---- APPLICATIONS ----
----------------------

hl.bind("SUPER + RETURN", hl.dsp.exec_cmd(headers.TERMINAL))
hl.bind("SUPER + D", hl.dsp.exec_cmd(headers.TERMINAL .. " -e lazydocker"))
hl.bind("SUPER + S", hl.dsp.exec_cmd(headers.TERMINAL .. " -e btop"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("firefox -new-window"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("nautilus"))
hl.bind("SUPER + Q", hl.dsp.exec_cmd("qalculate-gtk"))
hl.bind("code:135", hl.dsp.exec_cmd("obsidian"))

-----------------
---- WINDOWS ----
-----------------

hl.bind("SUPER + C", hl.dsp.window.close())
hl.bind("SUPER + F", hl.dsp.window.fullscreen())
hl.bind("SUPER + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("SUPER + left", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "d" }))

for workspace = 1, 10 do
  local key = "code:" .. tostring(workspace + 9)
  hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = tostring(workspace) }))
  hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = tostring(workspace) }))
  hl.bind("SUPER + SHIFT + ALT + " .. key, hl.dsp.window.move({ workspace = tostring(workspace), follow = false }))
end


-----------------
---- ACTIONS ----
-----------------

hl.bind("SUPER + SHIFT + T", hl.dsp.exec_cmd(headers.HYPR_SCRIPTS .. "/toggle-theme.sh"))
hl.bind("SUPER + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind("SUPER + P", hl.dsp.exec_cmd(headers.HYPR_SCRIPTS .. "/reset-xdg-portals.sh"))

hl.bind("PRINT", hl.dsp.exec_cmd("grimblast copysave screen ~/Pictures/Screenshots/screenshot_$(date +%Y-%m-%d_%H-%M-%S).png"))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("grimblast copysave area ~/Pictures/Screenshots/screenshot_$(date +%Y-%m-%d_%H-%M-%S).png"))

hl.bind("SUPER + CTRL + Q", hl.dsp.exec_cmd("wlogout"))
hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd(headers.HYPR_SCRIPTS .. "/set-random-wallpaper.sh"))
hl.bind("SUPER + CTRL + W", hl.dsp.exec_cmd("waypaper"))

hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd("~/.config/waybar/launch.sh"))
hl.bind("SUPER + CTRL + B", hl.dsp.exec_cmd("~/.config/waybar/toggle.sh"))
hl.bind("SUPER + CTRL + T", hl.dsp.exec_cmd("~/.config/waybar/themeswitcher.sh"))

hl.bind("SUPER + V", hl.dsp.exec_cmd("cliphist list | rofi -dmenu | cliphist decode | wl-copy"))
hl.bind("SUPER + W", hl.dsp.exec_cmd("cliphist wipe"))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("rofi -show drun"))

hl.bind("SUPER + X", hl.dsp.exec_cmd("hyprctl switchxkblayout all next"))

-----------------
---- FN KEYS ----
-----------------

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.00 @DEFAULT_SINK@ 5%+"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.00 @DEFAULT_SINK@ 5%-"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl -a play-pause"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl -a play-pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("pactl set-source-mute @DEFAULT_SOURCE@ toggle"))

-------------------------
---- KEYBOARD LAYOUT ----
-------------------------

hl.bind("SUPER + ALT + 1", hl.dsp.exec_cmd("hyprctl keyword input:kb_layout br"))
hl.bind("SUPER + ALT + 2", hl.dsp.exec_cmd("hyprctl keyword input:kb_layout ru"))
