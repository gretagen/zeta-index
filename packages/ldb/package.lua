return {
  name    = "ldb",
  version = "4.25.1-1-x86_64",
  summary = "schema-less, ldap like, API and database",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/ldb/ldb-4.25.1-1-x86_64.pkg.tar.zst",
  sha256  = "04910fbd71aa3b77a6ea80030c03f0398ec4a95e68729102cd233bde20ad86a7",
  deps    = { "tevent", "lmdb", "popt", "talloc", "libtdb" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libldb.so.2.11.0")
  end,
}
