return {
  name    = "fontconfig",
  version = "2.18.2-2",
  summary = "Font configuration and customization library (with fc-* tools)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/fontconfig/fontconfig-2.18.2-2.tar.gz",
  sha256  = "58159f8f3228ea46bca0f60f70d5e76edb5064311c177b8a9dc9713aeda1a7a1",
  deps    = { "glibc", "freetype", "libxml2", "expat" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libfontconfig.so.1 && test -x " .. p.install_root .. "/usr/bin/fc-scan && test -x " .. p.install_root .. "/usr/bin/fc-cache && test -x " .. p.install_root .. "/usr/bin/fc-match && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists fontconfig")
  end,
}
