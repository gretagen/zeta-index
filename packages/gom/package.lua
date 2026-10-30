return {
  name    = "gom",
  version = "0.5.6-1-x86_64",
  summary = "gObject to SQLite object mapper library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gom/gom-0.5.6-1-x86_64.pkg.tar.zst",
  sha256  = "66dca843e5605f14db81248d4241173ed29164f61d3338e4d32e3b8f7d438f73",
  deps    = { "glib", "glibc", "sqlite" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgom-1.0.so.0.1.0")
  end,
}
