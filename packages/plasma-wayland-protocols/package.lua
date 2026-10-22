return {
  name    = "plasma-wayland-protocols",
  version = "1.23.0",
  summary = "KDE: Plasma-specific protocols for Wayland",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/plasma-wayland-protocols/plasma-wayland-protocols-1.23.0.tar.gz",
  sha256  = "11b73e4733db4bb8ae2092aa611facf84bab815931be548446cc24aa8c25c40c",
  deps    = { "glibc", "qtbase", "gcc", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
