return {
  name    = "cairo",
  version = "1.18.4",
  summary = "2D graphics library with Xlib/XCB surfaces",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cairo/cairo-1.18.4.tar.gz",
  sha256  = "ee7f2297c5b597adb95d8157dfd1286b2d681d123164e5d9504d7c3918a61009",
  deps    = { "glibc", "libX11", "libXext", "libXrender", "libxcb", "pixman" },
  archive = { strip = 1 },
}
