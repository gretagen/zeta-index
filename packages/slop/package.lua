return {
  name    = "slop",
  version = "7.7",
  summary = "Select a region of the screen with a mouse (X11), maim's selection backend",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/slop/slop-7.7-4-x86_64.pkg.tar.zst",
  sha256  = "a6fbc0addcd48538eccce21243fe5b43591f1b1e055036a9078f85d0a7d65acd",
  deps    = { "glibc", "glew", "libX11", "libXext", "libXrender" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/slop && test -f " .. p.install_root .. "/usr/lib/libslopy.so.7.7")
  end,
}