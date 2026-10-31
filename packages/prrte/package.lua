return {
  name    = "prrte",
  version = "3.0.14-1-x86_64",
  summary = "PMIx Reference RunTime Environment (PRRTE) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/prrte/prrte-3.0.14-1-x86_64.pkg.tar.zst",
  sha256  = "4f4e6c1efb2d0f40d39271c6e02ce06ea04ebb2a3cae14179551c3590c9912f1",
  deps    = { "glibc", "hwloc", "libevent", "openpmix" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/prte")
  end,
}
