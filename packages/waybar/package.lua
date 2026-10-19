return {
  name    = "waybar",
  version = "0.15.0-2",
  summary = "Highly customizable Wayland bar (Sway/Waybar)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/waybar/waybar-0.15.0-2.tar.gz",
  sha256  = "c6666bfc91cf37d0a6cc2019a8f76cbe0dcb681f7a7d95db45e1f4756d433f5b",
  deps    = { "glibc", "fmt", "spdlog", "wayland", "wayland-protocols", "glib", "glibmm", "gtkmm3", "jsoncpp", "libsigc++2", "libnl", "systemd-libs", "gtk-layer-shell", "pulseaudio", "gcc", "libgcc", "libstdc++" },
  archive = { strip = 1 },
  files   = { "usr/bin/waybar", "etc/xdg/waybar/config.jsonc", "etc/xdg/waybar/style.css" },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/waybar && grep -q libpulse.so.0 " .. p.install_root .. "/usr/bin/waybar && " .. p.install_root .. "/usr/bin/waybar --version")
  end,
}
