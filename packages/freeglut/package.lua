return {
  name    = "freeglut",
  version = "3.8.0-1-x86_64",
  summary = "free OpenGL Utility Toolkit",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/freeglut/freeglut-3.8.0-1-x86_64.pkg.tar.zst",
  sha256  = "654537d5b3652fb115b018fcb971074929cf9e5101279c3e16bfd296052334ee",
  deps    = { "glibc", "glu", "mesa-full", "libX11", "libXi", "libXrandr", "libXxf86vm" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libglut.so.3.13.0")
  end,
}
