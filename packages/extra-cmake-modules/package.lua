return {
  name    = "extra-cmake-modules",
  version = "6.14.0",
  summary = "Extra CMake modules for KF6/LXQt builds",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/extra-cmake-modules/extra-cmake-modules-6.14.0.tar.gz",
  sha256  = "a50f35817b39770b29d46d1d8d2ce8a8d4b737017b1e28ea5cd6ead4652004ce",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/ECM/cmake/ECMConfig.cmake")
  end,
}
