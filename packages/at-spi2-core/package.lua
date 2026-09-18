return {
  name    = "at-spi2-core",
  version = "2.56.1",
  summary = "Assistive Technology Service Provider Interface (includes ATK)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/at-spi2-core/at-spi2-core-2.56.1.tar.gz",
  sha256  = "0baf9bb3e7fce8fe6e303bde5fcab4768d5ee4be30a3910e9d8ffa190779e0ee",
  deps    = { "glibc", "libX11", "libXi", "libXtst", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libatk-1.0.so.0 && test -f " .. p.install_root .. "/usr/lib/libatk-bridge-2.0.so.0 && readelf -d " .. p.install_root .. "/usr/lib/libatk-1.0.so.0 | grep -q 'libatk-1.0.so.0'")
  end,
}
