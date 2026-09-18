return {
  name    = "libgudev",
  version = "238",
  summary = "GObject bindings for libudev",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libgudev/libgudev-238.tar.gz",
  sha256  = "696366061dbf99a679de1453ac5ee41a0e93add105527c63d681eece0dd88434",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgudev-1.0.so.0")
  end,
}
