local headers = require("headers")

hl.on("hyprland.start", function()
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    
    hl.exec_cmd("ags run")
    hl.exec_cmd("dunst")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("nohup easyeffects --gapplication-service > /tmp/nohup.out")
    hl.exec_cmd("wl-paste --watch cliphist store")

    hl.exec_cmd(headers.HYPR_SCRIPTS .. "/reset-xdg-portals.sh")
    hl.exec_cmd(headers.HYPR_SCRIPTS .. "/status-bar.sh")
    hl.exec_cmd("sleep 1 && " .. headers.HYPR_SCRIPTS .. "/set-random-wallpaper.sh")    

    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)
