return {
  name    = "guile-semver",
  version = "0.2.0",
  summary = "Semantic versioning helpers for Guile (required by Guix)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guile-semver/guile-semver-0.2.0.tar.gz",
  sha256  = "0588195e2acba2555e8853220de2fa6e5942fc6b29e0524d426f1bf2589f8dd9",
  deps    = { "glibc", "guile" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/share/guile/site/3.0/semver*.scm >/dev/null && GUILE_LOAD_PATH=" .. p.install_root .. "/usr/share/guile/site/3.0 GUILE_LOAD_COMPILED_PATH=" .. p.install_root .. "/usr/lib/guile/site-ccache guile -c '(use-modules (semver))'")
  end,
}
