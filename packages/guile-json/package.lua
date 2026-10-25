return {
  name    = "guile-json",
  version = "4.3.2",
  summary = "JSON bindings for Guile (required by Guix, >=4.3 API)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guile-json/guile-json-4.3.2.tar.gz",
  sha256  = "dec537923116f3cecbbdec8f24218fee0a8ea53a122720c0d45e214fc2b81466",
  deps    = { "glibc", "guile" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/share/guile/site/3.0/json*.scm >/dev/null && GUILE_LOAD_PATH=" .. p.install_root .. "/usr/share/guile/site/3.0 GUILE_LOAD_COMPILED_PATH=" .. p.install_root .. "/usr/lib/guile/site-ccache guile -c '(use-modules (json)) (exit (if (defined? (quote define-json-mapping)) 0 1))'")
  end,
}
