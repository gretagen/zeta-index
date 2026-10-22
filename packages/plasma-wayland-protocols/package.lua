return {
  name    = "plasma-wayland-protocols",
  version = "1.23.0",
  summary = "KDE: Plasma-specific protocols for Wayland",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/plasma-wayland-protocols/plasma-wayland-protocols-1.23.0.tar.gz",
  sha256  = "6c5e3b3b3d8f0ffcef4493dbc0f63d74972d732b290ff769680ea9593b186c17",
  deps    = { "glibc", "qtbase", "gcc", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
