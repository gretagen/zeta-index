return {
  name    = "uthash",
  version = "2.4.0",
  summary = "uthash: header-only hash tables, lists and queues for C",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/uthash/uthash-2.4.0.tar.gz",
  sha256  = "0bb7dc0fc2f239e2da780a01b31014ef558c5aefec669a3c907c5f1bb68d04db",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/uthash.h && grep -qi 'uthash' " .. p.install_root .. "/usr/include/uthash.h && test -f " .. p.install_root .. "/usr/include/utarray.h && test -f " .. p.install_root .. "/usr/include/utlist.h")
  end,
}
