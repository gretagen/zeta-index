return {
  name    = "dav1d",
  version = "1.5.4",
  summary = "AV1 cross-platform decoder library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dav1d/dav1d-1.5.4.tar.gz",
  sha256  = "48e16d5bb9239aabc34f813cd3c06528623aa8d0a922f5e0cec9ad8d2a9c4f96",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libdav1d.so.7")
  end,
}
