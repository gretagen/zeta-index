return {
  name    = "hyprtoolkit",
  version = "0.5.4",
  summary = "Hyprland toolkit library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hyprtoolkit/hyprtoolkit-0.5.4.tar.gz",
  sha256  = "ebad1294f3a9c88187bd795c5ed7ab79395d6fa21d2c7de9bc3a2a2fa2ebf3d0",
  deps    = { "glibc", "hyprutils", "hyprlang", "hyprgraphics", "aquamarine", "hyprwayland-scanner", "wayland", "libdrm", "mesa-drivers", "iniparser", "pango", "cairo", "xkbcommon", "pixman" },
  archive = { strip = 1 },
}
