return {
  name    = "blackbox",
  version = "0.77-3-x86_64",
  summary = "a window manager for X11",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/blackbox/blackbox-0.77-3-x86_64.pkg.tar.zst",
  sha256  = "bf03a861d629af35fed90d9056fbfa58a97c9ec9a38d8019bedd2629b77192ea",
  deps    = { "bash", "glibc", "libgcc", "libstdc++", "libX11", "libXext", "libXft", "libXt" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/blackbox")
  end,
}
