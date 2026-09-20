return {
  name    = "libblockdev-loop",
  version = "3.5.0",
  summary = "A library for manipulating block devices - loop device support",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libblockdev-loop/libblockdev-loop.pkg.tar.zst",
  sha256  = "fb375443a923d4fdb8f63c87f6259add1753aab9c753885225d96aa453dc20b8",
  deps    = { "glib2", "libblockdev", "libgcc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
