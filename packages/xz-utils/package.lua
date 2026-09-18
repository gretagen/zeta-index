return {
  name    = "xz-utils",
  version = "5.6.4",
  summary = "XZ/LZMA compression (xz, lzma, liblzma)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xz-utils/xz-utils-5.6.4.tar.gz",
  sha256  = "26df21466c9e7102cc0fb47d8d2d6b87383354eff50f14335fd11985e1dcff6f",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xz")
  end,
}
