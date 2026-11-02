return {
  name    = "librest",
  version = "0.10.2",
  summary = "REST API client library (librest-1.0)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/librest/librest-0.10.2.tar.gz",
  sha256  = "2cb8e55c21aa179f24655b4a52d7cc15a4e9af2e158b2609ba15e39105c2c6ec",
  deps    = { "glibc", "glib", "libsoup3", "gtk4", "libjson-glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/librest-1.0.so* | grep -q . && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists rest-1.0")
  end,
}
