return {
  name    = "libxkbcommon-x11",
  version = "1.13.2-1-x86_64",
  summary = "X11 keyboard handling via xkbcommon (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libxkbcommon-x11/libxkbcommon-x11-1.13.2-1-x86_64.pkg.tar.zst",
  sha256  = "350c1f367caed92abdb1c5d230b57cf46dd75b77d27c13ea7b152947fda62508",
  deps    = { "glibc", "libxcb", "xkbcommon" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libxkbcommon-x11.so.0")
  end,
}
