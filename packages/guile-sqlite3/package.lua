return {
  name    = "guile-sqlite3",
  version = "0.1.3",
  summary = "Guile bindings for SQLite (required by Guix)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/guile-sqlite3/guile-sqlite3-0.1.3.tar.gz",
  sha256  = "cb4639221600d6c4aa0a145b5267467d79d6750a766065b24eda748d94099af5",
  deps    = { "glibc", "guile", "sqlite" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/share/guile/site/3.0/sqlite3*.scm >/dev/null && GUILE_LOAD_PATH=" .. p.install_root .. "/usr/share/guile/site/3.0 GUILE_LOAD_COMPILED_PATH=" .. p.install_root .. "/usr/lib/guile/site-ccache guile -c '(use-modules (sqlite3))'")
  end,
}
