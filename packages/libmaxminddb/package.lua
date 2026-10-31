return {
  name    = "libmaxminddb",
  version = "1.14.1-1-x86_64",
  summary = "MaxMind DB reader library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmaxminddb/libmaxminddb-1.14.1-1-x86_64.pkg.tar.zst",
  sha256  = "f6c482f697967b9541539a8d25805b8df37c072e4bee211d1dd742695f649e0e",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmaxminddb.so.0")
  end,
}
