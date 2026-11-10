return {
  name    = "dbus-python",
  version = "1.5.1",
  summary = "Python bindings for D-Bus",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dbus-python/dbus-python-1.5.1.tar.gz",
  sha256  = "1fbd00d3d3cd6e378a79640df692177a34c81c8767ce3aa29feae0bfcd6292c9",
  deps    = { "glibc", "dbus", "glib", "python" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/lib/python3.14/site-packages/dbus && PYTHONPATH=" .. p.install_root .. "/usr/lib/python3.14/site-packages python3 -c \"import dbus, _dbus_bindings; print(dbus.__version__)\"")
  end,
}
