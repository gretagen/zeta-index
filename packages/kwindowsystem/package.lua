return {
  name    = "kwindowsystem",
  version = "6.13.0",
  summary = "KDE Frameworks 6 window system library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kwindowsystem/kwindowsystem-6.13.0.tar.gz",
  sha256  = "ebea8c326d3e3f405b3dfeac392cf46b8acdca0633776d3d90a571febaf64dd5",
  deps    = { "glibc", "libICE", "libSM", "libXext", "libXfixes", "qtbase", "xcb-util-keysyms", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libKF6WindowSystem.so.6")
  end,
}
