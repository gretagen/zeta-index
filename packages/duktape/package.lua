return {
  name    = "duktape",
  version = "2.7.0",
  summary = "Embeddable Javascript engine (shared library)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/duktape/duktape-2.7.0.tar.gz",
  sha256  = "89abe99d12927d1459c33f3370ac4159633b48f6f6126e9af414352c3badf8ae",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libduktape.so.207 && test -f " .. p.install_root .. "/usr/include/duktape.h && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists duktape")
  end,
}
