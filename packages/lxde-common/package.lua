return {
  name    = "lxde-common",
  version = "0.99.4",
  summary = "LXDE common files and default configs (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lxde-common/lxde-common-0.99.4-1-any.pkg.tar.zst",
  sha256  = "c56ed72328a75bbcda94e019bd107b0208c18b5586a70489edc68c994fd1fac5",
  deps    = { "bash" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/startlxde")
  end,
}
