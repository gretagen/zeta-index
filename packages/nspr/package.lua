return {
  name    = "nspr",
  version = "4.40",
  summary = "Netscape Portable Runtime (platform abstraction)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/nspr/nspr-4.40.tar.gz",
  sha256  = "26d81d3bb72b7eaf04958bbaf1cbc3ee91adc0f3f6da3518f84298a4f0b6a0ea",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnspr4.so && test -f " .. p.install_root .. "/usr/include/nspr/prtypes.h && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists nspr")
  end,
}
