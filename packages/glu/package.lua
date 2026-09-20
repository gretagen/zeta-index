return {
  name    = "glu",
  version = "9.0.3",
  summary = "Mesa OpenGL utility library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/glu/glu.pkg.tar.zst",
  sha256  = "a981608b5a1c7d6cdee0e71385035dc45ada61dc1221429adde16909e17222e6",
  deps    = { "libglvnd", "libstdc++", "libgcc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
