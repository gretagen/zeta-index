return {
  name    = "guile-gcrypt",
  version = "0.5.0",
  summary = "Guile bindings for libgcrypt (required by Guix)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guile-gcrypt/guile-gcrypt-0.5.0.tar.gz",
  sha256  = "647dae33817f368933901c59ef01333bc821a6be9b4b372e4c9a61b0e70cff1f",
  deps    = { "glibc", "guile", "libgcrypt" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/share/guile/site/3.0/gcrypt/*.scm >/dev/null && GUILE_LOAD_PATH=" .. p.install_root .. "/usr/share/guile/site/3.0 GUILE_LOAD_COMPILED_PATH=" .. p.install_root .. "/usr/lib/guile/site-ccache guile -c '(use-modules (gcrypt hash))'")
  end,
}
