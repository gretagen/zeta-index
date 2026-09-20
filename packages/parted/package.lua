return {
  name    = "parted",
  version = "3.7",
  summary = "A program for creating, destroying, resizing, checking and copying partitions",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/parted/parted.pkg.tar.zst",
  sha256  = "09485cfa4e618bb060929b1f53dbbeafac68a2dc17a92c1247d2ef74474258dc",
  deps    = { "device-mapper", "util-linux-libs", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
