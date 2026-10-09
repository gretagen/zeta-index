return {
  name    = "liblqr",
  version = "0.4.3",
  summary = "Liquid Rescale content-aware image resizing (liblqr-1.so.0)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/liblqr/liblqr.pkg.tar.zst",
  sha256  = "5724b3b80d44f874783d0c8ff20c87afeb1dee03a1084375e91a597c10b231e3",
  deps    = { "glib", "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/liblqr-1.so.0")
  end,
}
