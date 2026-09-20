return {
  name    = "lib32-util-linux",
  version = "2.42.3",
  summary = "Miscellaneous system utilities for Linux (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-util-linux/lib32-util-linux.pkg.tar.zst",
  sha256  = "af55a526c9927915997597e064529c64e9dd812af921f423ba4919301f35e51c",
  deps    = { "util-linux-libs", "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
