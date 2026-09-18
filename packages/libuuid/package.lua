return {
  name    = "libuuid",
  version = "2.42.1",
  summary = "UUID library (from util-linux)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libuuid/libuuid-2.42.1.tar.gz",
  sha256  = "1becb406baa11adda8781838b566fa0c32413b9b159ffe3b18a618685faa719e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libuuid.so.1")
  end,
}
