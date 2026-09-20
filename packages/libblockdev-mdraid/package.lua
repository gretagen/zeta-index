return {
  name    = "libblockdev-mdraid",
  version = "3.5.0",
  summary = "A library for manipulating block devices - MDRAID support",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libblockdev-mdraid/libblockdev-mdraid.pkg.tar.zst",
  sha256  = "7de7b6608763647e00e81b991b69a485823f10ee250b7202d9a77d58d8ca3f18",
  deps    = { "glib2", "libblockdev", "libgcc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
