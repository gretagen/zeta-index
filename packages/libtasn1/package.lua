return {
  name    = "libtasn1",
  version = "6.6.5",
  summary = "ASN.1 library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libtasn1/libtasn1-6.6.5.tar.gz",
  sha256  = "7de32870d9a7cec8ba8ba846d830bd91fef15edb0daf06e43fb8d719253ba391",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libtasn1.so.6")
  end,
}
