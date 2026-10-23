return {
  name    = "libkscreen",
  version = "6.3.6",
  summary = "KDE: KDE's screen management software",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libkscreen/libkscreen-6.3.6.tar.gz",
  sha256  = "95fa11e4ab4ca265127993755b2f529d79bde2e92ad38f5fa8f576ea185dea99",
  deps    = { "glibc", "qtbase", "gcc", "qtwayland", "plasma-wayland-protocols", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
