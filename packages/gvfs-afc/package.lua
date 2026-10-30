return {
  name    = "gvfs-afc",
  version = "1.62.0-3-x86_64",
  summary = "virtual filesystem implementation for GIO - AFC backend (Apple mobile devices)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gvfs-afc/gvfs-afc-1.62.0-3-x86_64.pkg.tar.zst",
  sha256  = "ef0fbd4150ff1db93ee2c3f4821d9dad4478da56f9818cc774fcededd2eaefdc",
  deps    = { "gvfs", "glib", "glibc", "libimobiledevice", "libplist", "usbmuxd" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gvfs-afc-volume-monitor")
  end,
}
