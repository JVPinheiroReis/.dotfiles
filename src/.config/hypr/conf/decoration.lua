hl.config({
    decoration = {
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        dim_strength = 0.1,
        dim_inactive = false,
        fullscreen_opacity = 1.0,

        blur = {
            enabled = true,
            size = 5,
            passes = 2,
            new_optimizations = true,
            ignore_opacity = true,
            xray = true
            -- blurls = "waybar",
        },

        shadow = {
            enabled = false,
            range = 15,
            render_power = 3,
            color = "0x66000000"
        },
    }
})
