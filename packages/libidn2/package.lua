return {
  name    = "libidn2",
  version = "0.4.0-2",
  summary = "Implementation of IDNA2008 and TR46 (IDNA2008 for TLS)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libidn2/libidn2-0.4.0-2.tar.gz",
  sha256  = "8c970a725164d37c15ed1d9754966fd1cb9361fe5e7998cde6d71b7ab2d49adb",
  deps    = { "glibc", "libunistring" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libidn2.so.0* >/dev/null && test -f " .. p.install_root .. "/usr/include/idn2.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libidn2.pc && test -x " .. p.install_root .. "/usr/bin/idn2")
  end,
}
