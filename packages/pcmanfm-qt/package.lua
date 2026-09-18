return {
  name    = "pcmanfm-qt",
  version = "2.1.0",
  summary = "LXQt component (pcmanfm-qt)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pcmanfm-qt/pcmanfm-qt-2.1.0.tar.gz",
  sha256  = "1ddeaaa88784e11376b541b41f16e4dded54e3e04bfbfeb46c8d788a28f0b878",
  deps    = { "glibc", "layer-shell-qt", "libexif", "libfm-qt", "menu-cache", "qtbase", "xcb-util", "xcb-util-cursor", "xcb-util-image", "xcb-util-keysyms", "xcb-util-renderutil", "xcb-util-wm" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/pcmanfm-qt")
  end,
}
