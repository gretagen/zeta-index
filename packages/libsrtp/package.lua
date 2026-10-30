return {
  name    = "libsrtp",
  version = "2.8.1-1-x86_64",
  summary = "library for SRTP (Secure Realtime Transport Protocol)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libsrtp/libsrtp-2.8.1-1-x86_64.pkg.tar.zst",
  sha256  = "728cadfef94dcb3f994e04262bf4c9ab2474ed7e9931c7e710a40975feefb9b9",
  deps    = { "glibc", "nspr", "nss" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libsrtp2.so.1")
  end,
}
