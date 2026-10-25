return {
  name    = "guile-ssh",
  version = "0.18.0",
  summary = "Guile bindings for libssh (required by Guix)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guile-ssh/guile-ssh-0.18.0.tar.gz",
  sha256  = "42ab35f27205342df771b0c00d6b5d269d3f58917616d8d157bde2946d49ccc1",
  deps    = { "glibc", "guile", "libssh" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/share/guile/site/3.0/ssh/*.scm >/dev/null && GUILE_LOAD_PATH=" .. p.install_root .. "/usr/share/guile/site/3.0 GUILE_LOAD_COMPILED_PATH=" .. p.install_root .. "/usr/lib/guile/site-ccache LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib guile -c '(use-modules (ssh session))'")
  end,
}
