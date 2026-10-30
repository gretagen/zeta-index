return {
  name    = "apr-util",
  version = "1.6.5-1-x86_64",
  summary = "the Apache Portable Runtime",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/apr-util/apr-util-1.6.5-1-x86_64.pkg.tar.zst",
  sha256  = "bddd402c6484af1b4d88098aebbdc32931b71ec901c66eb21e30cb2fe7536bae",
  deps    = { "apr", "expat", "glibc", "libxcrypt" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libaprutil-1.so.0.6.5")
  end,
}
