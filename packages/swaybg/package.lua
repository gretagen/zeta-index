return {
  name    = "swaybg",
  version = "1.2.2",
  summary = "Wallpaper utility for Wayland compositors (sway)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/swaybg/swaybg-1.2.2.tar.gz",
  sha256  = "4196d6f5b83a71aebd2e1d99dd57de1a35964e30171fa0646ab0d23e7ac9d489",
  deps    = { "glibc", "wayland", "wayland-protocols", "cairo", "gdk-pixbuf" },
  archive = { strip = 1 },
}
