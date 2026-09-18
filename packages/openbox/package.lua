return {
  name    = "openbox",
  version = "3.6.1",
  summary = "Openbox X11 window manager (LXQt default WM)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/openbox/openbox-3.6.1.tar.gz",
  sha256  = "399bb121acafaf59f88a98b952855f1e2842920a70f90a80200a182c5421c150",
  deps    = { "glibc", "libXcursor", "libXinerama", "libXrandr", "libXext", "libICE", "libSM", "pango", "libXft", "librsvg", "cairo", "libxml2", "imlib2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/openbox")
  end,
}
