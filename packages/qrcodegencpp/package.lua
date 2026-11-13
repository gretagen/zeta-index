return {
  name    = "qrcodegencpp",
  version = "1.8.0",
  summary = "QR Code generator library (C++, Nayuki)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qrcodegencpp/qrcodegencpp-1.8.0.tar.gz",
  sha256  = "9a0bdd9eebaad8c5b081f9249a59bfaeebd5495ecdf7cf62e8081ff5b618f59c",
  deps    = { "glibc", "libstdc++", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libqrcodegencpp.so.1 && test -f " .. p.install_root .. "/usr/include/qrcodegencpp/qrcodegen.hpp && test -f " .. p.install_root .. "/usr/lib/pkgconfig/qrcodegencpp.pc")
  end,
}
