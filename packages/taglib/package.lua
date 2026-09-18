return {
  name    = "taglib",
  version = "2.3.0",
  summary = "Audio metadata tag library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/taglib/taglib-2.3.0.tar.gz",
  sha256  = "82b2d52c97f0e7531d094b10c25f0c200500445568539ae599aebefa2b815a38",
  deps    = { "glibc", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libtag.so.2")
  end,
}
