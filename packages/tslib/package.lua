return {
  name    = "tslib",
  version = "1.24",
  summary = "Touchscreen input library (libts), used by Qt 5 touch plugins",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/tslib/tslib-1.24.tar.gz",
  sha256  = "715227b1b8be4a91d31260d791688911fa46437d83798d5623d2e538079de98c",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libts.so.0")
  end,
}
