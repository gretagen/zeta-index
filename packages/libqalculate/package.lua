return {
  name    = "libqalculate",
  version = "5.12.0",
  summary = "Multi-purpose calculator library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libqalculate/libqalculate-5.12.0-1-x86_64.pkg.tar.zst",
  sha256  = "d763c1d2437ba3fefcc23f0a541ba1e43122b9cb93b0a3ad8f3b29ff24409480",
  deps    = { "glibc", "gcc", "curl", "gmp", "icu", "libxml2", "mpfr", "readline" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libqalculate.so.23")
    p:run("test -x " .. p.install_root .. "/usr/bin/qalc")
  end,
}
