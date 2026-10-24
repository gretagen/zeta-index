return {
  name    = "iniswap",
  version = "1.10.0",
  summary = "Swap init systems (openrc/runit/dinit/systemd/shepherd) on next boot for Haliade system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.10.0.tar.gz",
  sha256  = "4613541529ca6c574006e23517a43cc6ad1b120700e1bb7fc16439f40f8158e8",
  deps    = { "bash", "chronos", "nacelle" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap && test -x " .. p.install_root .. "/usr/bin/reboot && test -x " .. p.install_root .. "/usr/bin/shutdown && test -x " .. p.install_root .. "/sbin/reboot && test -x " .. p.install_root .. "/sbin/shutdown && grep -q '/usr/lib/nacelle/iniswap' " .. p.install_root .. "/usr/bin/iniswap && grep -q 'shepherd' " .. p.install_root .. "/usr/bin/iniswap && ! grep -q '/usr/lib/declaration' " .. p.install_root .. "/usr/bin/iniswap")
  end,
}
