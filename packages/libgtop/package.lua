return {
  name    = "libgtop",
  version = "2.41.3",
  summary = "System monitoring library (libgtop-2.0)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libgtop/libgtop-2.41.3.tar.gz",
  sha256  = "3d6a0b4a59422ca55a5b824116467800e1948b0031ee9ac8b23d4c0bee8cffe1",
  deps    = { "glibc", "glib", "gobject-introspection" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libgtop-2.0.so* | grep -q . && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists libgtop-2.0")
  end,
}
