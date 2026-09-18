return {
  name    = "xcb-util-keysyms",
  version = "0.4.1",
  summary = "XCB keyboard shortcuts utility library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xcb-util-keysyms/xcb-util-keysyms-0.4.1.tar.gz",
  sha256  = "d49365fb0a772200e33b023b4c2892508aff78dc7eea9e9f4b6e2d9f5c6e2c11",
  deps    = { "glibc", "libxcb", "xcb-util" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxcb-keysyms.so.1")
  end,
}
