return {
  name    = "hyprland-protocols",
  version = "0.7.0",
  summary = "Hyprland protocol files (wayland-protocols layout)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hyprland-protocols/hyprland-protocols-0.7.0.tar.gz",
  sha256  = "ff214076b2526ee70f55f6d0b718a08ecc2b3918f20acad6ac8065ad7e4d34fb",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/wayland-protocols/hyprland/hyprland-surface-v1.xml")
  end,
}
