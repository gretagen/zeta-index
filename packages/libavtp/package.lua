return {
  name    = "libavtp",
  version = "0.2.0-3-x86_64",
  summary = "open source implementation of Audio Video Transport Protocol",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libavtp/libavtp-0.2.0-3-x86_64.pkg.tar.zst",
  sha256  = "7906723d50c63855c1528d3b84fb9e723b1a45077f2c24134addd0909724eab0",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libavtp.so.0.2.0")
  end,
}
