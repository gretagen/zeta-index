return {
  name    = "libblockdev-nvme",
  version = "3.5.0",
  summary = "A library for manipulating block devices - NVME support",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libblockdev-nvme/libblockdev-nvme.pkg.tar.zst",
  sha256  = "12871d559d976b7654a090db663fb71510de1786768bae72877bc73adef3d2d0",
  deps    = { "glib2", "libblockdev", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
