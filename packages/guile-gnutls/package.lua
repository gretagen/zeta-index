return {
  name    = "guile-gnutls",
  version = "5.0.1",
  summary = "Guile bindings for the GnuTLS library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guile-gnutls/guile-gnutls-5.0.1.tar.gz",
  sha256  = "031f2c5754e3a920c620ee3471b2a41252aabd2c41af1a59fb44596600eae49c",
  deps    = { "glibc", "guile", "gnutls" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/share/guile/site/3.0 && ls " .. p.install_root .. "/usr/share/guile/site/3.0/gnutls*.scm >/dev/null && GUILE_LOAD_PATH=" .. p.install_root .. "/usr/share/guile/site/3.0 GUILE_LOAD_COMPILED_PATH=" .. p.install_root .. "/usr/lib/guile/site-ccache LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib/guile/3.0/extensions guile -c '(use-modules (gnutls))'")
  end,
}
