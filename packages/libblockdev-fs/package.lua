return {
  name    = "libblockdev-fs",
  version = "3.5.0",
  summary = "A library for manipulating block devices - filesystem support",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libblockdev-fs/libblockdev-fs.pkg.tar.zst",
  sha256  = "345165f70971455bcb2a0904ebabda70b3c2d633c7b80a8271fadf5f292b2a38",
  deps    = { "e2fsprogs", "glib2", "libblockdev", "libgcc", "util-linux-libs", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
