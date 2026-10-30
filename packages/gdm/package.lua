return {
  name    = "gdm",
  version = "51.1.1-1-x86_64",
  summary = "display manager and login screen",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gdm/gdm-51.1.1-1-x86_64.pkg.tar.zst",
  sha256  = "f5f2ede0a5eb159b55688b63e0801820815233361419398cf60054d252e23a45",
  deps    = { "accountsservice", "audit", "bash", "gdk-pixbuf", "glib", "glibc", "gnome-session", "gnome-shell", "libjson-glib", "keyutils", "libcanberra", "libgcc", "libgudev", "libXau", "libxcb", "pam", "polkit", "systemd", "systemd-libs", "upower" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gdm")
  end,
}
