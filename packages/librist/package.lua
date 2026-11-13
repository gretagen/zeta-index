return {
  name    = "librist",
  version = "0.2.20",
  summary = "libRIST: Reliable Internet Stream Transport protocol library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/librist/librist-0.2.20.tar.gz",
  sha256  = "a73958d4ba733e4951cd6a5043e69435db4207e756f2f6bbfe7706bc01b8dd59",
  deps    = { "glibc", "cjson" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/librist.so.4 && test -f " .. p.install_root .. "/usr/include/librist/librist.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/librist.pc && test ! -e " .. p.install_root .. "/usr/lib/libcmocka.so")
  end,
}
