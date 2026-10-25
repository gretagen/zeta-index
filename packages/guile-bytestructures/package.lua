return {
  name    = "guile-bytestructures",
  version = "1.0.10",
  summary = "Structured bytevector access for Guile (needed by guile-git)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guile-bytestructures/guile-bytestructures-1.0.10.tar.gz",
  sha256  = "d10b0bf37dd761db4dcfda416d2e941e3ec7e658149859605f2173a6918e406a",
  deps    = { "glibc", "guile" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/share/guile/site/3.0/bytestructures/*.scm >/dev/null && GUILE_LOAD_PATH=" .. p.install_root .. "/usr/share/guile/site/3.0 GUILE_LOAD_COMPILED_PATH=" .. p.install_root .. "/usr/lib/guile/site-ccache guile -c '(use-modules (bytestructures guile))'")
  end,
}
