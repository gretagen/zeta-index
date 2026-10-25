return {
  name    = "guile-json",
  version = "4.7.3",
  summary = "JSON bindings for Guile (required by Guix, >=4.3 API)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guile-json/guile-json-4.7.3.tar.gz",
  sha256  = "47bdd4fe1e6f1b88499f0735591ed24d2e49671a44bc2b91b43197542c98bd57",
  deps    = { "glibc", "guile" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/share/guile/site/3.0/json*.scm >/dev/null && GUILE_LOAD_PATH=" .. p.install_root .. "/usr/share/guile/site/3.0 GUILE_LOAD_COMPILED_PATH=" .. p.install_root .. "/usr/lib/guile/site-ccache guile -c '(use-modules (json)) (exit (if (defined? (quote define-json-mapping)) 0 1))'")
  end,
}
