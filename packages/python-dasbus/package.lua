return {
  name    = "python-dasbus",
  version = "1.7-5-any",
  summary = "dBus library in Python 3",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-dasbus/python-dasbus-1.7-5-any.pkg.tar.zst",
  sha256  = "4316a35b4625f02b6cd20a183d0a9751e38f81a32f79af1b4eea22fbbe964f61",
  deps    = { "python", "python-gobject", "dbus", "glib" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/python3.14/site-packages/dasbus-1.7.dist-info/METADATA")
  end,
}
