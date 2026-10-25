return {
  name    = "guix",
  version = "1.5.0",
  summary = "GNU Guile-based functional package manager",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guix/guix-1.5.0.tar.xz",
  sha256  = "87106f6d714134bfb445c1cfdaaca4ddced2e58ce9542393b220e3265da462d4",
  deps    = { "glibc", "guile", "gcc", "libgcc", "libstdc++", "guile-gcrypt", "guile-sqlite3", "guile-ssh", "guile-gnutls", "guile-git", "guile-json", "guile-zlib", "guile-lzlib", "guile-semver", "gnutls", "sqlite", "libgcrypt", "curl", "expat", "bzip2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/guix && test -x " .. p.install_root .. "/usr/bin/guix-daemon && test -x " .. p.install_root .. "/usr/libexec/guix/guile && test -f " .. p.install_root .. "/usr/share/guile/site/3.0/gnu/packages.scm && GUILE_LOAD_PATH=" .. p.install_root .. "/usr/share/guile/site/3.0 GUILE_LOAD_COMPILED_PATH=" .. p.install_root .. "/usr/lib/guile/3.0/site-ccache guile --no-auto-compile -e main -s " .. p.install_root .. "/usr/bin/guix --version | grep -q 1.5.0")
  end,
}
