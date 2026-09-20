return {
  name    = "libblockdev-part",
  version = "3.5.0",
  summary = "A library for manipulating block devices - partitioning support",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libblockdev-part/libblockdev-part.pkg.tar.zst",
  sha256  = "59185b56349bef3fe2b15ec6ece646bfbe6c0d8c1f400c48c2eeee62cb3617ba",
  deps    = { "glib2", "libblockdev", "util-linux-libs", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
