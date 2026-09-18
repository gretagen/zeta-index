return {
  name    = "menu-cache",
  version = "1.1.1",
  summary = "LXDE menu cache library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/menu-cache/menu-cache-1.1.1.tar.gz",
  sha256  = "bf5d45d29bbf7571470e9d15b437ec71e27ef7513480f230777f6a3993e12a43",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libmenu-cache.so.3")
  end,
}
