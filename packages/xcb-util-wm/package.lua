return {
  name    = "xcb-util-wm",
  version = "0.4.2",
  summary = "XCB EWMH and ICCCM utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xcb-util-wm/xcb-util-wm-0.4.2.tar.gz",
  sha256  = "9d81d437df4fbcfb7f30eb33ea2e32ec9119423630a211a27ab0d8322007efbf",
  deps    = { "glibc", "libxcb", "xcb-util" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxcb-icccm.so.4")
  end,
}
