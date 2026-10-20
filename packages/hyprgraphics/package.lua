return {
  name    = "hyprgraphics",
  version = "0.5.1-2",
  summary = "Hyprland graphics libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hyprgraphics/hyprgraphics-0.5.1-2.tar.gz",
  sha256  = "8c56ef06b13d157ebb4b19adce5ae2ddf474f764ed40a1980b8a33e9961aaf03",
  deps    = { "glibc", "glycin", "hyprutils", "libjpeg-turbo", "libwebp", "file", "librsvg", "pango", "cairo", "wayland", "libdrm", "pixman", "hyprwayland-scanner", "glib" },
  archive = { strip = 1 },
}
