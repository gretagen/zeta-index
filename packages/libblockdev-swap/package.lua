return {
  name    = "libblockdev-swap",
  version = "3.5.0",
  summary = "A library for manipulating block devices - swap device support",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libblockdev-swap/libblockdev-swap.pkg.tar.zst",
  sha256  = "77cb9b5a3a16ed84e998b1a3e3633cf7a5fda34110891090cfcee4b930b571be",
  deps    = { "glib2", "libblockdev", "libgcc", "util-linux-libs", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
