return {
  name    = "jwm",
  version = "2.4.6-2-x86_64",
  summary = "lightweight window manager for the X11 Window System",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/jwm/jwm-2.4.6-2-x86_64.pkg.tar.zst",
  sha256  = "0d38310210a5bd349fcaa5563200d3e50d319e4943d17eb55921224ed5b47d06",
  deps    = { "cairo", "glib", "glibc", "libjpeg-turbo", "libpng", "librsvg", "libX11", "libXext", "libXft", "libXinerama", "libXmu", "libXpm", "libXrender", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/jwm")
  end,
}
