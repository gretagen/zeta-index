return {
  name    = "libkscreen",
  version = "6.3.6",
  summary = "KDE: KDE's screen management software",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libkscreen/libkscreen-6.3.6.tar.gz",
  sha256  = "42039ee5ecca586bd58834877439494f58f9bbed24b47ec07ba39cb5ed659118",
  deps    = { "glibc", "qtbase", "gcc", "qtwayland", "plasma-wayland-protocols", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
