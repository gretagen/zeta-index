return {
  name    = "pekwm",
  version = "0.4.4-1-x86_64",
  summary = "tabbed X11 window manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/pekwm/pekwm-0.4.4-1-x86_64.pkg.tar.zst",
  sha256  = "5922842e212d8e580e738760c724c15d409eee8e54aa337c63dab643ceb40ba6",
  deps    = { "curl", "libjpeg-turbo", "libpng", "libXft", "libXinerama", "libXpm", "libXrandr", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/pekwm")
  end,
}
