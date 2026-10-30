return {
  name    = "libcaca",
  version = "0.99.beta20-7-x86_64",
  summary = "color ASCII art library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libcaca/libcaca-0.99.beta20-7-x86_64.pkg.tar.zst",
  sha256  = "072b0d54e3630542f808d912ea57960affc3ca6b23ae6c8bff9e1717ef2ea816",
  deps    = { "freeglut", "glibc", "glu", "imlib2", "libglvnd", "libstdc++", "libX11", "ncurses", "slang", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcaca++.so.0.99.20")
  end,
}
