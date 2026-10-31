return {
  name    = "hwloc",
  version = "2.15.0-1-x86_64",
  summary = "Portable Hardware Locality library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/hwloc/hwloc-2.15.0-1-x86_64.pkg.tar.zst",
  sha256  = "70557154447db225e7be8b16a6b5797bac7c3ff0cd290dd58ad1e0b011c1d730",
  deps    = { "glibc", "libpciaccess", "ncurses", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libhwloc.so.15")
  end,
}
