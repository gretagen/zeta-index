return {
  name    = "libgudev",
  version = "238-2",
  summary = "GObject bindings for libudev (gir-enabled)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libgudev/libgudev-238-2.tar.gz",
  sha256  = "d4e9eead32075110408f304bb45c1e460a907fbd7d30c9b5ba310f4e224d0029",
  deps    = { "glibc", "glib", "systemd-libs", "gobject-introspection" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libgudev-1.0.so* | grep -q . && test -f " .. p.install_root .. "/usr/share/gir-1.0/GUdev-1.0.gir && test -f " .. p.install_root .. "/usr/lib/girepository-1.0/GUdev-1.0.typelib")
  end,
}
