return {
  name    = "kwayland",
  version = "6.3.6",
  summary = "KDE: KWayland provides a Qt-style Client and Server library wrapper for the Wayland libraries.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kwayland/kwayland-6.3.6.tar.gz",
  sha256  = "8fdae9ef21276500fc38ff4b8616a8ebe16ef3da5a401455e3736ff0d2e9c16a",
  deps    = { "glibc", "qtbase", "gcc", "qtwayland", "plasma-wayland-protocols", "wayland", "wayland-protocols" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
