return {
  name    = "lib32-libxext",
  version = "1.3.7",
  summary = "X11 miscellaneous extensions library (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libxext/lib32-libxext.pkg.tar.zst",
  sha256  = "732b539ee274f429a8fee699b136617c22cc7603d5997d002fa8161a79489483",
  deps    = { "lib32-libx11", "libXext", "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
