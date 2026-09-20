return {
  name    = "libblockdev-smart",
  version = "3.5.0",
  summary = "A library for manipulating block devices - S.M.A.R.T. support",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libblockdev-smart/libblockdev-smart.pkg.tar.zst",
  sha256  = "e992d31f806169815af390a55a20bfa5fa8ef4ddc76ed0f327dc02e75125853c",
  deps    = { "glib2", "libblockdev", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
