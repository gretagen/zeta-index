return {
  name    = "libarchive",
  version = "3.8.9",
  summary = "Library for reading/writing streaming archives",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libarchive/libarchive-3.8.9.tar.gz",
  sha256  = "c5d946f40f1ff41de45d78f024a3e404c77663db31ce366cddfa8604656b1436",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libarchive.so.13")
  end,
}
