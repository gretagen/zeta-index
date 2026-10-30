return {
  name    = "libmicrodns",
  version = "0.2.0-2-x86_64",
  summary = "minimal mDNS resolver library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmicrodns/libmicrodns-0.2.0-2-x86_64.pkg.tar.zst",
  sha256  = "db56751044a346413293d9da1815e7de2eebd93b50fa95644c6e1d8e6c33bcac",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmicrodns.so.1.0.0")
  end,
}
