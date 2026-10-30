return {
  name    = "lua53-lgi",
  version = "0.9.2-14-x86_64",
  summary = "lua bindings for gnome/gobject using gobject-introspection library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lua53-lgi/lua53-lgi-0.9.2-14-x86_64.pkg.tar.zst",
  sha256  = "603c93ed35b0cd1a33cdf6b6a483cb33ac88162158a63e1792f3fcd5bf2f7945",
  deps    = { "glibc", "glib", "libffi", "gobject-introspection-runtime", "lua53" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/lua/5.3/lgi/corelgilua51.so")
  end,
}
