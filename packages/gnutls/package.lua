return {
  name    = "gnutls",
  version = "30.42.0-2",
  summary = "TLS library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnutls/gnutls-30.42.0-2.tar.gz",
  sha256  = "19cbe61f5ec121770b2f98136b9544de2cf1f0ac78d96ada9ba8926bf3d264e0",
  deps    = { "glibc", "gmp", "leancrypto", "libidn2", "libtasn1", "libunistring", "nettle", "p11-kit", "gcc", "libgcc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libgnutls.so.30* >/dev/null && test -f " .. p.install_root .. "/usr/lib/pkgconfig/gnutls.pc && test -f " .. p.install_root .. "/usr/include/gnutls/gnutls.h && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists --print-errors gnutls")
  end,
}
