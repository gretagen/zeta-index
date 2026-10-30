return {
  name    = "apr",
  version = "1.7.6-1-x86_64",
  summary = "the Apache Portable Runtime",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/apr/apr-1.7.6-1-x86_64.pkg.tar.zst",
  sha256  = "d865433b4e2d5a447347225e21d8f0d7e6557c7f3f5d81fb4684db35b9a50195",
  deps    = { "glibc", "util-linux-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libapr-1.so.0.7.6")
  end,
}
