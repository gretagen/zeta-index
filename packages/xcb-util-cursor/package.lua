return {
  name    = "xcb-util-cursor",
  version = "0.1.6",
  summary = "XCB cursor utility library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xcb-util-cursor/xcb-util-cursor-0.1.6.tar.gz",
  sha256  = "f320ac30ab4c7ca7fcc1e8400863e7d23267ab1e3665a1523ea42ceefe434490",
  deps    = { "glibc", "libxcb", "xcb-util", "xcb-util-image", "xcb-util-renderutil" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxcb-cursor.so.0")
  end,
}
