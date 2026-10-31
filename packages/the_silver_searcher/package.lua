return {
  name    = "the_silver_searcher",
  version = "2.2.0-4-x86_64",
  summary = "Code-searching tool similar to ack (ag) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/the_silver_searcher/the_silver_searcher-2.2.0-4-x86_64.pkg.tar.zst",
  sha256  = "bdaa303409182833f2815131f06368476ae5ee4c937736749a3d9ceb8dbbec60",
  deps    = { "pcre2", "xz-utils", "libz", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ag")
  end,
}
