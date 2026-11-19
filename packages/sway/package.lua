return {
  name    = "sway",
  version = "1.12",
  summary = "Tiling Wayland compositor (i3-compatible)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sway/sway-1.12.tar.gz",
  sha256  = "3e45f59e20518b5b0b2380af190b4e1188c83b3211aa29884765a43604c9fdb2",
  deps    = { "glibc", "wlroots", "wayland", "json-c", "pcre2", "xkbcommon", "cairo", "pango", "gdk-pixbuf", "pixman", "libevdev", "libinput", "libxcb", "xcb-util-wm", "libdrm", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/sway && test -x " .. p.install_root .. "/usr/bin/swaymsg && test -x " .. p.install_root .. "/usr/bin/swaybar && test -x " .. p.install_root .. "/usr/bin/swaynag && " .. p.install_root .. "/usr/bin/sway --version | grep -q '1.12' && test -f " .. p.install_root .. "/usr/share/man/man1/sway.1 && test -f " .. p.install_root .. "/usr/share/wayland-sessions/sway.desktop")
  end,
}
