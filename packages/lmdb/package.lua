return {
  name    = "lmdb",
  version = "0.9.35",
  summary = "Symas Lightning Memory-Mapped Database",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lmdb/lmdb.pkg.tar.zst",
  sha256  = "50ae8083860e1ffadf4fab3c173a043fd97be41f5ceda7d2e77c528cd84d2386",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
