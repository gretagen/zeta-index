return {
  name    = "libqmi",
  version = "1.38.0-2-x86_64",
  summary = "qMI modem protocol helper library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libqmi/libqmi-1.38.0-2-x86_64.pkg.tar.zst",
  sha256  = "2049b218b75da32e8be0ce4a8792fadef1abfab8149ace778bc09e9936100404",
  deps    = { "bash", "glib", "glibc", "libgcc", "libgudev", "libmbim", "libqrtr-glib" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libqmi-glib.so.5.12.0")
  end,
}
