return {
  name    = "xfce4-appfinder",
  version = "4.20.0",
  summary = "Xfce application finder",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xfce4-appfinder/xfce4-appfinder-4.20.0.tar.gz",
  sha256  = "ae7a8df48fde195abea2947816f3d6e53e559eaa2d3ba32aa585c3fe069ee360",
  deps    = { "glibc", "garcon", "libxfce4ui", "libxfce4util", "xfconf", "gtk3", "glib", "cairo", "gdk-pixbuf" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xfce4-appfinder")
  end,
}
