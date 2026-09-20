return {
  name    = "libstdc++",
  version = "16.2.1+r23+gd564253eb6c8",
  summary = "C++ runtime libraries shipped by GCC",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libstdc++/libstdc++.pkg.tar.zst",
  sha256  = "15dc6bd2f3a2ee17fcd79a14325e9e0037722a592b2bdc55e1665d92112eaa51",
  deps    = { "libgcc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
