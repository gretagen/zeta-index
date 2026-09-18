return {
  name    = "xdg-dbus-proxy",
  version = "0.1.8",
  summary = "D-Bus proxy sandboxing (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xdg-dbus-proxy/xdg-dbus-proxy-0.1.8.pkg.tar.zst",
  sha256  = "7e20f0325d3f25a9b8e5041c53c51c5be7711719bff8a6ac54c798170040ebcb",
  deps    = { "glib" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
