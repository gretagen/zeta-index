return {
  name    = "libmtdev",
  version = "1.1.6",
  summary = "Multitouch protocol translation library (mtdev)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libmtdev/libmtdev-1.1.6.tar.gz",
  sha256  = "b7b1f26103bb2dbb755e5d2ce73a0fd086393ec83c9b495687fcc64cc5d20410",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmtdev.so.1")
  end,
}
