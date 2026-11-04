return {
  name    = "iniswap",
  version = "1.10.2",
  summary = "Utility for swapping init systems",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.10.1.tar.gz",
  sha256  = "be8a8d3dee47a011e0573c799d2dde8f0ebd2573c9d3a705c0ff796e10f02d10",
  deps    = { "bash", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap && test -x " .. p.install_root .. "/usr/bin/reboot && test -x " .. p.install_root .. "/usr/bin/shutdown && test -x " .. p.install_root .. "/sbin/reboot && test -x " .. p.install_root .. "/sbin/shutdown && grep -q '/usr/lib/nacelle/iniswap' " .. p.install_root .. "/usr/bin/iniswap && grep -q 'shepherd' " .. p.install_root .. "/usr/bin/iniswap && ! grep -q '/usr/lib/iniswap' " .. p.install_root .. "/usr/bin/iniswap" .. p.install_root .. "/usr/lib/iniswap/openrc.sh" .. p.install_root .. "/usr/lib/iniswap/runit.sh" .. p.install_root .. "/usr/lib/iniswap/dinit.sh" .. p.install_root .. "/usr/lib/iniswap/systemd.sh" .. p.install_root .. "/usr/lib/iniswap/runit.sh")
  end,
}
