return {
  name    = "sqlite",
  version = "3.53.4-3",
  summary = "Self-contained, embeddable SQL database engine",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/sqlite/sqlite-3.53.4-3.tar.gz",
  sha256  = "b3750647228f607c1e051e8810225349c9658ad47397afe1bd1a19b0a4a8bcc7",
  deps    = { "glibc", "libz", "ncurses", "readline" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libsqlite3.so.0* >/dev/null && test -x " .. p.install_root .. "/usr/bin/sqlite3 && test -f " .. p.install_root .. "/usr/include/sqlite3.h && readelf -d " .. p.install_root .. "/usr/lib/libsqlite3.so.0 | grep -q SONAME && " .. p.install_root .. "/usr/bin/sqlite3 --version | grep -q 3.53")
  end,
}
