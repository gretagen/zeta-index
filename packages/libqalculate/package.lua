return {
  name    = "libqalculate",
  version = "5.13.2",
  summary = "Multi-purpose calculation engine library and qalc CLI",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libqalculate/libqalculate-5.13.2.tar.gz",
  sha256  = "47cdf98d8fc77dc36c258bd3bf38cd2c3e826ec2f49eabbe68f3423fc964a62c",
  deps    = { "glibc", "gcc", "libgcc", "libstdc++", "gmp", "mpfr", "libxml2", "curl", "readline", "ncurses", "libidn2", "nghttp2", "libpsl", "librtmp", "libssh2", "libzstd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libqalculate.so.23 && test -x " .. p.install_root .. "/usr/bin/qalc && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libqalculate.pc")
  end,
}
