return {
  name    = "dell-thrower",
  version = "1.0",
  summary = "Dell Thrower - Qt6 stickman Dell-throwing clicker game",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dell-thrower/dell-thrower-1.0.tar.gz",
  sha256  = "a85b42f1846a0327f8df543ce0fd4572c7fc06965051f49eeb193ecd284ffdf6",
  deps    = { "glibc", "qtbase", "qtmultimedia" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dell-thrower && test -f " .. p.install_root .. "/usr/share/applications/dellthrower.desktop && test -f " .. p.install_root .. "/usr/share/pixmaps/dell-thrower.png")
  end,
}
