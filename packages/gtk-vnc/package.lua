return {
  name    = "gtk-vnc",
  version = "1.5.0-1-x86_64",
  summary = "vNC viewer widget for GTK",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gtk-vnc/gtk-vnc-1.5.0-1-x86_64.pkg.tar.zst",
  sha256  = "3972c5e509af68c1d2112ba93f79d6ec6726371c192d9a99d96634d0d47c19ac",
  deps    = { "cairo", "gdk-pixbuf", "glib", "glibc", "gmp", "gnutls", "gtk3", "libpulse", "libsasl", "libX11", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgtk-vnc-2.0.so.0.0.2")
  end,
}
