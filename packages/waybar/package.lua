return {
  name    = "waybar",
  version = "0.15.0",
  summary = "Highly customizable Wayland bar (Sway/Waybar)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/waybar/waybar-0.15.0.tar.gz",
  sha256  = "c2ca265ea4bb948043e4b2816221f79e05496356354cfb8a3a5e0925b1ba0e23",
  deps    = { "glibc", "fmt", "spdlog", "wayland", "wayland-protocols", "glib", "glibmm", "gtkmm3", "jsoncpp", "libsigc++2", "libnl", "systemd-libs" },
  archive = { strip = 1 },
}
