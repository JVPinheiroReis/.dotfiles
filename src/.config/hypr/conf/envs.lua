-- General setup
hl.env("EDITOR", "nvim")
hl.env("LIBVIRT_DEFAULT_URI", "qemu:///system")
hl.env("SDL_VIDEODRIVER", "wayland")

-- PATH
local home = os.getenv("HOME") or ""
local current_path = os.getenv("PATH") or ""
local new_path = home .. "/.cargo/bin:" .. home .. "/.local/bin:" .. home .. "/.local/share/pipx/venvs:" .. home .. "/go/bin:/usr/lib/ccache/bin/:" .. current_path
hl.env("PATH", new_path)
