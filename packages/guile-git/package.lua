return {
  name    = "guile-git",
  version = "0.10.0",
  summary = "Guile bindings for git (required by Guix)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guile-git/guile-git-0.10.0.tar.gz",
  sha256  = "5c1883c150f89c00863eca96841ac4734dca7429f64c35b9a7ecb27f4db0d95c",
  deps    = { "glibc", "guile", "git" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/share/guile/site/3.0/git/*.scm >/dev/null && GUILE_LOAD_PATH=" .. p.install_root .. "/usr/share/guile/site/3.0 GUILE_LOAD_COMPILED_PATH=" .. p.install_root .. "/usr/lib/guile/site-ccache guile -c '(use-modules (git))'")
  end,
}
