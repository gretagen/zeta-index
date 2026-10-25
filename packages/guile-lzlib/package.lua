return {
  name    = "guile-lzlib",
  version = "0.3.0",
  summary = "Guile bindings to lzlib (required by Guix)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guile-lzlib/guile-lzlib-0.3.0.tar.gz",
  sha256  = "e5176418b820a4d4abdf6ecf84b64533514250da7b5023166bbeb02ccf64c8b9",
  deps    = { "glibc", "guile", "lzlib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/share/guile/site/3.0/lzlib*.scm >/dev/null && GUILE_LOAD_PATH=" .. p.install_root .. "/usr/share/guile/site/3.0 GUILE_LOAD_COMPILED_PATH=" .. p.install_root .. "/usr/lib/guile/site-ccache guile -c '(use-modules (lzlib))'")
  end,
}
