return {
  name    = "lxtask",
  version = "0.1.12",
  summary = "LXDE task manager (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lxtask/lxtask-0.1.12-2-x86_64.pkg.tar.zst",
  sha256  = "330ec34085cd1f9a582c6467b9a25093025db06fae13c1f71d04a3bdd06264ac",
  deps    = { "glib", "gtk3" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxtask")
  end,
}
