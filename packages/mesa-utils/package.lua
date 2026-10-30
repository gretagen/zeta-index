return {
  name    = "mesa-utils",
  version = "9.0.0-7-x86_64",
  summary = "Mesa OpenGL/EGL utilities and demos (glxinfo, glxgears, eglinfo)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mesa-utils/mesa-utils-9.0.0-7-x86_64.pkg.tar.zst",
  sha256  = "2433deec3f9b3c166c1976ea0cecf1de9466a5b55525df9b6a0cf273b4747fc1",
  deps    = { "glibc", "libdecor", "libdrm", "libglvnd", "libX11", "libxcb", "xkbcommon", "libxkbcommon-x11", "vulkan-loader", "wayland" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/glxinfo")
  end,
}
