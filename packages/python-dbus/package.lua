return {
  name    = "python-dbus",
  version = "1.5.1-1-x86_64",
  summary = "python bindings for D-Bus",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-dbus/python-dbus-1.5.1-1-x86_64.pkg.tar.zst",
  sha256  = "f1760d9c4494efb278e53cc16dcfcbff43c98422f23752b12ced16465a83dad3",
  deps    = { "dbus", "glib", "glibc", "python" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/pkgconfig/dbus-python.pc")
  end,
}
