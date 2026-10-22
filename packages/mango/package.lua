return {
  name    = "mango",
  version = "0.18.2",
  summary = "MangoWM: lightweight dwl-based Wayland compositor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mango/mango-0.18.2.tar.gz",
  sha256  = "f13cd2bd9a02199d443fb74f8c7d719ddba0252c4622ce721eaba830d1c23375",
  deps    = { "glibc", "glib", "cairo", "cjson", "pango", "pixman", "scenefx", "wayland", "wlroots", "xkbcommon", "libinput", "pcre2", "libxcb", "xcb-util-wm" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/mango && test -x " .. p.install_root .. "/usr/bin/mmsg && test -x " .. p.install_root .. "/usr/bin/mangonag && test -f " .. p.install_root .. "/etc/mango/config.conf && test -f " .. p.install_root .. "/etc/mango/config.toml && test -f " .. p.install_root .. "/usr/share/wayland-sessions/mango.desktop && test -f " .. p.install_root .. "/usr/share/xdg-desktop-portal/mango-portals.conf && readelf -d " .. p.install_root .. "/usr/bin/mango | grep -q libwlroots-0.20")
  end,
}
