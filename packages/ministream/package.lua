return {
  name    = "ministream",
  version = "0.99.1-1-x86_64",
  summary = "In-memory stream abstraction for lists (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/ministream/ministream-0.99.1-1-x86_64.pkg.tar.zst",
  sha256  = "22b5025fe5f619b1c878aa547e3ce1ce41f0026962f14bf84fa991f94aaad261",
  deps    = { "glib", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libministream.so.1")
  end,
}
