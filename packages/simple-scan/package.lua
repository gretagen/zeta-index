return {
  name    = "simple-scan",
  version = "50.0-1-x86_64",
  summary = "simple scanning utility",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/simple-scan/simple-scan-50.0-1-x86_64.pkg.tar.zst",
  sha256  = "0fc6266d61592277bb397623ced0d5de6224952eae6c67b3282a0e4eeb6ccc19",
  deps    = { "cairo", "libdconf", "gdk-pixbuf", "glib", "glibc", "gtk4", "hicolor-icon-theme", "libadwaita", "libcolord", "libgusb", "libwebp", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/simple-scan")
  end,
}
