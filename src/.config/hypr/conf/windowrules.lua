hl.window_rule({ float = true, match = { class = "^(pavucontrol)$" } })
hl.window_rule({ float = true, match = { class = "^(QjackCtl)$" } })
hl.window_rule({ float = true, match = { class = "^(xdg-desktop-portal-gtk)$" } })
hl.window_rule({ float = true, match = { class = "^(net.ankiweb.Anki)$", title = "^(Add)$" } })

hl.window_rule({ float = true, match = { class = "^(qalculate-gtk)$" } })
hl.window_rule({ float = true, match = { class = "^(qalculate-qt)$" } })

hl.window_rule({ float = true, match = { class = "^(mpv)$" } })
hl.window_rule({ max_size = { 480, 270 }, match = { class = "^(mpv)$" } })

hl.window_rule({ border_size = 0, match = { float = false, workspace = "w[tv1]s[false]" } })
hl.window_rule({ border_size = 0, match = { float = false, workspace = "f[1]s[false]" } })

hl.window_rule({ rounding = 3, match = { float = true } })
