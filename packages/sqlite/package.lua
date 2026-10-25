return {
  name    = "sqlite",
  version = "3.53.4-2",
  summary = "Self-contained, embeddable SQL database engine",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sqlite/sqlite-3.53.4-2.tar.gz",
  sha256  = "d3ee50068888868ab2c060b026c83c5fa51d5129e212d7c98b473ddc2a46efe6",
  deps    = { "glibc", "libz", "ncurses", "readline" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libsqlite3.so.0* >/dev/null && test -x " .. p.install_root .. "/usr/bin/sqlite3 && test -f " .. p.install_root .. "/usr/include/sqlite3.h && nm -D " .. p.install_root .. "/usr/lib/libsqlite3.so.0 | grep -q enable_load_extension")
  end,
}
