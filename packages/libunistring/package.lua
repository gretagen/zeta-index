return {
  name    = "libunistring",
  version = "5.2.1",
  summary = "Unicode string library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libunistring/libunistring-5.2.1.tar.gz",
  sha256  = "fa5683142b6a90228a00fc8f04a1ea3a5407ee4af4a62d98a871292c8f541f59",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libunistring.so.5")
  end,
}
