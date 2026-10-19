return {
  name    = "sbc",
  version = "2.2",
  summary = "Sub Band Coding (SBC) codec library for Bluetooth audio",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sbc/sbc-2.2.tar.gz",
  sha256  = "0b9680232fb5099694db6539047ef6ef1f36e6e9e68d2649a8a4db7b2825f4ab",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/pkgconfig/sbc.pc && ls " .. p.install_root .. "/usr/lib/libsbc.so.*")
  end,
}
