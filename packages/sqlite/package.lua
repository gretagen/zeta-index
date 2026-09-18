return {
  name    = "sqlite",
  version = "3.53.4",
  summary = "Self-contained, embeddable SQL database engine",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sqlite/sqlite-3.53.4.tar.gz",
  sha256  = "8efe7c93bd9dec1fc4a454967307de9571060d465646d2b60ec810645bc2ea48",
  deps    = { "glibc", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libsqlite3.so.0 -a -e " .. p.install_root .. "/usr/bin/sqlite3")
  end,
}
