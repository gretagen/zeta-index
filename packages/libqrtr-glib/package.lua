return {
  name    = "libqrtr-glib",
  version = "1.4.0-2-x86_64",
  summary = "Qualcomm IPC Router helper library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libqrtr-glib/libqrtr-glib-1.4.0-2-x86_64.pkg.tar.zst",
  sha256  = "9a447513a5d23e8ebd8729b663cb47d989c54567fee57f12e25295d4c15e2b6c",
  deps    = { "glib", "glibc", "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libqrtr-glib.so.0")
  end,
}
