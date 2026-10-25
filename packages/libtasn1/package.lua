return {
  name    = "libtasn1",
  version = "4.21.0-2",
  summary = "ASN.1 type parsing library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libtasn1/libtasn1-4.21.0-2.tar.gz",
  sha256  = "4fd5bb75f56b4bc650ef7b068059c4bd7b8e27561f7a8ae4668ef1151a56341f",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libtasn1.so.6 && test -f " .. p.install_root .. "/usr/include/libtasn1.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libtasn1.pc")
  end,
}
