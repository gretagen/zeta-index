return {
  name    = "libqrencode",
  version = "4.1.1",
  summary = "QR code encoder library and CLI",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libqrencode/libqrencode-4.1.1.tar.gz",
  sha256  = "928462a942ca7cd12a965a30df8f78aff310e99770b43fd8ee8c6989256a549f",
  deps    = { "glibc", "libpng", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/qrencode.h && find " .. p.install_root .. "/usr -name 'libqrencode.so*' | grep -q .")
  end,
}
