return {
  name    = "gtk-layer-shell",
  version = "0.10.1",
  summary = "GTK Wayland layer-shell bindings",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gtk-layer-shell/gtk-layer-shell-0.10.1.tar.gz",
  sha256  = "1bb450864c2b86c5b1400e2e874957d8d3b6d369ee278ff22600bc71a7c1c2da",
  deps    = { "glibc", "gtk3", "wayland", "wayland-protocols" },
  archive = { strip = 1 },
}
