return {
  name    = "mate-session-manager",
  version = "1.28.0",
  summary = "Session manager for MATE (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mate-session-manager/mate-session-manager-1.28.0.pkg.tar.zst",
  sha256  = "988a5d6ce2a60aca333125176d4ce2559817f89a4ce0c2701c7efd76123327ea",
  deps    = { "dbus-glib", "gettext", "gtk3", "libSM", "mate-desktop" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/ 2>/dev/null || ls " .. p.install_root .. "/usr/share/ 2>/dev/null")
  end,
}
