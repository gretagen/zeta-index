return {
  name    = "garcon",
  version = "4.20.0",
  summary = "Freedesktop.org menu library for Xfce",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/garcon/garcon-4.20.0.tar.gz",
  sha256  = "62356bdd1778dc818f5b72aea74706662a7cf16bd7d6a8f92009bf507b033ed8",
  deps    = { "glibc", "libxfce4util", "gtk3" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgarcon-1.so.0")
  end,
}
