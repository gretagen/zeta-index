return {
  name    = "pkgconf",
  version = "3.0.10",
  summary = "pkg-config implementation for querying build/library metadata",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pkgconf/pkgconf-3.0.10.tar.gz",
  sha256  = "10ae3ee943c05db7ec150254c6ea27dea379d086e7f73c902fdb50bf29a0cf60",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/pkgconf && test -x " .. p.install_root .. "/usr/bin/pkg-config && test -f " .. p.install_root .. "/usr/share/aclocal/pkg.m4 && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib " .. p.install_root .. "/usr/bin/pkg-config --version")
  end,
}
