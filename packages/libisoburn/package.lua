return {
  name    = "libisoburn",
  version = "1.5.8.2",
  summary = "Frontend library for libburn & libisofs",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libisoburn/libisoburn-1.5.8.2.tar.gz",
  sha256  = "d31ccf5a43a3d5f57f92aced0fa0aa27a947f9b4319a8c5d60a86fccda4d504d",
  deps    = { "glibc", "libburn", "libisofs", "libz", "acl", "readline", "ncurses" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libisoburn.so.1 && test ! -e " .. p.install_root .. "/usr/bin/xorriso")
  end,
}
