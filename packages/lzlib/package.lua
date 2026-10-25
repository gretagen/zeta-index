return {
  name    = "lzlib",
  version = "1.12",
  summary = "LZ-compression library (lzip runtime)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lzlib/lzlib-1.12.tar.gz",
  sha256  = "ab1c3d6df0aa413a56e4905c7548ad0a734d43ada47d5e76f81f58a142990d5a",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libz.so* >/dev/null || true; ls " .. p.install_root .. "/usr/lib/liblz.so* >/dev/null")
  end,
}
