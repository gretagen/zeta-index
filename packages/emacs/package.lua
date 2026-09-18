return {
  name    = "emacs",
  version = "30.2",
  summary = "Extensible, customizable, self-documenting text editor",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/emacs/emacs-30.2.tar.gz",
  sha256  = "0f460b003ab40138aec7306dca440bb4a86d77602573bb2e3d5aac60934df56b",
  deps    = { "glibc", "gtk3", "libX11", "libXpm", "libjpeg-turbo", "libpng", "libwebp", "sqlite", "cairo", "harfbuzz", "dbus", "libXrandr", "libXinerama", "libXfixes", "libXext", "libXcomposite", "libxcb", "libXi", "libxml2", "libtinfo", "freetype", "fontconfig", "lcms2", "systemd-libs", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/emacs")
    p:run("test -x " .. p.install_root .. "/usr/bin/emacsclient")
  end,
}
