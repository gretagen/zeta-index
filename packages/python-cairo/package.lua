return {
  name    = "python-cairo",
  version = "1.29.2-1-x86_64",
  summary = "python bindings for the cairo graphics library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/python-cairo/python-cairo-1.29.2-1-x86_64.pkg.tar.zst",
  sha256  = "006b14fe103d40270710fd0379e5f68dd6a8f35b5e2979034df6e30648c7a242",
  deps    = { "cairo", "python" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/pkgconfig/py3cairo.pc")
  end,
}
