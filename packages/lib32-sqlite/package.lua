return {
  name    = "lib32-sqlite",
  version = "3.53.4",
  summary = "A C library that implements an SQL database engine (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-sqlite/lib32-sqlite.pkg.tar.zst",
  sha256  = "18cf540eda092b47ff5f45871c153743e1172d50141a182ae164e183990429a4",
  deps    = { "lib32-glibc", "lib32-gcc-libs", "sqlite", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
