return {
  name    = "duckdb",
  version = "2.0.0",
  summary = "In-process SQL OLAP database command line client (C++ binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/duckdb/duckdb-2.0.0.tar.gz",
  sha256  = "c901465058681b75404579eac6a48c447483dc8d7a4f5e8a7994ff3fa155d4de",
  deps    = { "glibc", "libstdc++", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/duckdb")
  end,
}
