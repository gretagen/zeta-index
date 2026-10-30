return {
  name    = "sway",
  version = "1.12-4-x86_64",
  summary = "i3-compatible Wayland compositor (wlroots)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/sway/sway-1.12-4-x86_64.pkg.tar.zst",
  sha256  = "5704cfc9eba9804116c665cb4450352bf5a240c1a8300b36aca3218116648443",
  deps    = { "cairo", "gdk-pixbuf", "libevdev", "libinput", "json-c", "pixman", "systemd-libs", "wayland", "libxcb", "xkbcommon", "pango", "pcre2", "ttf-liberation", "wlroots", "xcb-util-wm" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/sway")
  end,
}
