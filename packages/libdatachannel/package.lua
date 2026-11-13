return {
  name    = "libdatachannel",
  version = "0.24.6",
  summary = "libdatachannel: WebRTC data channels and media tracks",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libdatachannel/libdatachannel-0.24.6.tar.gz",
  sha256  = "80cb09f85e6363a82a5de28ca4355f43cf0036484d6e50edd61bca5b7cec72f8",
  deps    = { "glibc", "openssl", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr/lib -name 'libdatachannel.so*')\" && test -f " .. p.install_root .. "/usr/include/rtc/rtc.hpp && test -n \"$(find " .. p.install_root .. "/usr -name 'LibDataChannel*Config.cmake')\"")
  end,
}
