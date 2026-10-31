return {
  name    = "vnstat",
  version = "2.13-2-x86_64",
  summary = "Console-based network traffic monitor (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/vnstat/vnstat-2.13-2-x86_64.pkg.tar.zst",
  sha256  = "71dac2d86983cee5b8094e04b58f325307980db4221a6f5bbd23f667ed34b1c8",
  deps    = { "glibc", "sqlite" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/vnstat")
  end,
}
