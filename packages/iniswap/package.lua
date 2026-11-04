return {
  name    = "iniswap",
  version = "1.10.2",
  summary = "Utility for swapping init systems",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.10.2.tar.gz",
  sha256  = "7d83058263b172fa8ece46e0c267da708957f22330b2afafe7b2ff37e6ec5018",
  deps    = { "bash", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap && test -x " .. p.install_root .. "/usr/bin/reboot && test -x " .. p.install_root .. "/usr/bin/shutdown && test -x " .. p.install_root .. "/sbin/reboot && test -x " .. p.install_root .. "/sbin/shutdown && grep -q '/usr/lib/iniswap' " .. p.install_root .. "/usr/bin/iniswap && grep -q 'shepherd' " .. p.install_root .. "/usr/bin/iniswap && ! grep -q 'nacelle/iniswap' " .. p.install_root .. "/usr/bin/iniswap && ! test -e " .. p.install_root .. "/usr/lib/nacelle && test -f " .. p.install_root .. "/usr/lib/iniswap/systemd.sh && test -f " .. p.install_root .. "/usr/lib/iniswap/openrc.sh && test -f " .. p.install_root .. "/usr/lib/iniswap/runit.sh && test -f " .. p.install_root .. "/usr/lib/iniswap/dinit.sh && test -f " .. p.install_root .. "/usr/lib/iniswap/shepherd.sh && grep -q 'primitive-load' " .. p.install_root .. "/usr/lib/iniswap/shepherd.sh && grep -q 'catch #t' " .. p.install_root .. "/usr/lib/iniswap/shepherd.sh && ! grep -q '(load (string-append' " .. p.install_root .. "/usr/lib/iniswap/shepherd.sh")
  end,
}
