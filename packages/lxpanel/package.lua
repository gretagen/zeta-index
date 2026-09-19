return {
  name    = "lxpanel",
  version = "0.11.1",
  summary = "LXDE desktop panel (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lxpanel/lxpanel-0.11.1-4-x86_64.pkg.tar.zst",
  sha256  = "6ce06a5ae70206546b99e4f58b1881ff4f581b00993a015556df40ac01281b4c",
  deps    = { "alsa-lib", "cairo", "curl", "gdk-pixbuf", "glib", "gtk3", "libfm", "libfm-gtk3", "libkeybinder3", "libwnck3", "libX11", "libxml2", "lxmenu-data", "menu-cache", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxpanel")
  end,
}
