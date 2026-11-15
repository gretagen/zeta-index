return {
  name    = "iniswap",
  version = "1.10.3",
  summary = "Utility for swapping init systems",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.10.3.tar.gz",
  sha256  = "b17e28f532795aac27b0b3a5e9410ee3d7fb73d8e2c42ac0d1409f2bb4718751",
  deps    = { "bash", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap && test -x " .. p.install_root .. "/usr/bin/reboot && test -x " .. p.install_root .. "/usr/bin/shutdown && test -x " .. p.install_root .. "/sbin/reboot && test -x " .. p.install_root .. "/sbin/shutdown && grep -q '/usr/lib/iniswap' " .. p.install_root .. "/usr/bin/iniswap && grep -q 'shepherd' " .. p.install_root .. "/usr/bin/iniswap && ! grep -q 'nacelle/iniswap' " .. p.install_root .. "/usr/bin/iniswap && ! test -e " .. p.install_root .. "/usr/lib/nacelle && test -f " .. p.install_root .. "/usr/lib/iniswap/systemd.sh && test -f " .. p.install_root .. "/usr/lib/iniswap/openrc.sh && test -f " .. p.install_root .. "/usr/lib/iniswap/runit.sh && test -f " .. p.install_root .. "/usr/lib/iniswap/dinit.sh && test -f " .. p.install_root .. "/usr/lib/iniswap/shepherd.sh && grep -q 'primitive-load' " .. p.install_root .. "/usr/lib/iniswap/shepherd.sh && grep -q 'catch #t' " .. p.install_root .. "/usr/lib/iniswap/shepherd.sh && ! grep -q '(load (string-append' " .. p.install_root .. "/usr/lib/iniswap/shepherd.sh")
  end,
}
