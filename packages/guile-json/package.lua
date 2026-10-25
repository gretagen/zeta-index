return {
  name    = "guile-json",
  version = "1.3.2",
  summary = "JSON bindings for Guile (required by Guix)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guile-json/guile-json-1.3.2.tar.gz",
  sha256  = "7ec91dc72a9237ef4c54ae4a3efd66127939eaf5ddfc08da3079a8d5a70cff71",
  deps    = { "glibc", "guile" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/share/guile/site/3.0/json*.scm >/dev/null && GUILE_LOAD_PATH=" .. p.install_root .. "/usr/share/guile/site/3.0 GUILE_LOAD_COMPILED_PATH=" .. p.install_root .. "/usr/lib/guile/site-ccache guile -c '(use-modules (json))'")
  end,
}
