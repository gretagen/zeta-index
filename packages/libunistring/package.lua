return {
  name    = "libunistring",
  version = "5.2.1",
  summary = "Unicode string library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libunistring/libunistring-5.2.1.tar.gz",
  sha256  = "504f4507de4d434f32d2488321392694bef375ebb2c8bcd6beef9397c5e33f15",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libunistring.so.5 && test -f " .. p.install_root .. "/usr/include/unistring/version.h && test -f " .. p.install_root .. "/usr/include/uniconv.h")
  end,
}
