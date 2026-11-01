return {
  name    = "glib-networking",
  version = "2.90.1",
  summary = "Network TLS support for GLib (gnutls backend)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glib-networking/glib-networking-2.90.1.tar.gz",
  sha256  = "d7922a928fa97379cc84d5bf9c8a469e9b26497be1b6347284c49c02e9dc4730",
  deps    = { "glibc", "glib", "gnutls", "libproxy" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gio/modules/libgiognutls.so && test -e " .. p.install_root .. "/usr/lib/gio/modules/libgiolibproxy.so && test -x " .. p.install_root .. "/usr/libexec/glib-pacrunner")
  end,
}
