return {
  name    = "guile-zlib",
  version = "0.2.2",
  summary = "Guile bindings to zlib (required by Guix)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guile-zlib/guile-zlib-0.2.2.tar.gz",
  sha256  = "2bc95e0113b3053a43db0bb083355ec0568e31a06c73a989a2e456c7d3bd4737",
  deps    = { "glibc", "guile", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/share/guile/site/3.0/zlib*.scm >/dev/null && GUILE_LOAD_PATH=" .. p.install_root .. "/usr/share/guile/site/3.0 GUILE_LOAD_COMPILED_PATH=" .. p.install_root .. "/usr/lib/guile/site-ccache guile -c '(use-modules (zlib))'")
  end,
}
