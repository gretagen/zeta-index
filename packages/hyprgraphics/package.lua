return {
  name    = "hyprgraphics",
  version = "0.5.1",
  summary = "Hyprland graphics libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hyprgraphics/hyprgraphics-0.5.1.tar.gz",
  sha256  = "ad5b5a9fbdf1319b1b3bd8cca720f6f3545d8b386b0666cb797bc3ecfd81824f",
  deps    = { "glibc", "glycin", "hyprutils", "libwebp", "file", "librsvg", "pango", "cairo", "wayland", "libdrm", "pixman", "hyprwayland-scanner", "glib" },
  archive = { strip = 1 },
}
