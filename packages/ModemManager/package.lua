return {
  name    = "ModemManager",
  version = "1.24.2",
  summary = "ModemManager daemon and libmm-glib",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/ModemManager/ModemManager-1.24.2.tar.gz",
  sha256  = "1cb1592da6b6747ac00e5e8f55d31f49107b669b696d66ce5fc434f6182110f8",
  deps    = { "glibc", "glib", "libgudev", "gobject-introspection", "libxml2", "polkit" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libmm-glib.so* | grep -q . && test -f " .. p.install_root .. "/usr/lib/pkgconfig/mm-glib.pc && test -x " .. p.install_root .. "/usr/sbin/ModemManager && test -f " .. p.install_root .. "/usr/share/gir-1.0/ModemManager-1.0.gir")
  end,
}
