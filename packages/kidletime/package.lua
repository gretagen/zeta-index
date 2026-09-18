return {
  name    = "kidletime",
  version = "6.14.0",
  summary = "KF6 idle time detection (KF6IdleTime)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kidletime/kidletime-6.14.0.tar.gz",
  sha256  = "b8fa26d4c01a1aa4c559d9c677b85b7fe8b88879019ebc999e0bcfd33e960eb9",
  deps    = { "glibc", "libICE", "libSM", "libXext", "libxss", "qtbase", "qtwayland", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/cmake/KF6IdleTime/KF6IdleTimeConfig.cmake")
  end,
}
