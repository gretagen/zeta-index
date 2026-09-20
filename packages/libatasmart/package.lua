return {
  name    = "libatasmart",
  version = "0.19",
  summary = "ATA S.M.A.R.T. reader and parser library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libatasmart/libatasmart.pkg.tar.zst",
  sha256  = "31e8b419d2ffe2ebb306533af3923b8f1bf75dfd6afa0df2dc861371ec9c50d6",
  deps    = { "systemd-libs", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
