return {
  name    = "xapian-core",
  version = "2.1.0-1-x86_64",
  summary = "Search engine library (Xapian) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xapian-core/xapian-core-2.1.0-1-x86_64.pkg.tar.zst",
  sha256  = "547063c210772129b7c48a8ebcb37518ab1445e64697b8ca423f912e42db2c80",
  deps    = { "bash", "glibc", "libgcc", "libstdc++", "libuuid", "libz", "util-linux-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libxapian.so.45")
  end,
}
