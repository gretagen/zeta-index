return {
  name    = "numactl",
  version = "2.0.19",
  summary = "Simple NUMA policy support",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/numactl/numactl.pkg.tar.zst",
  sha256  = "699bce74daee11fa49de93999ba4e023f132bc51a7768dec845b2979d54f367d",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
