return {
  name    = "iniswap",
  version = "1.6.0",
  summary = "Swap init systems (openrc/runit/dinit) on next boot for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.6.0.tar.gz",
  sha256  = "d897dcca22cbfc5e49b3f55c97f0775deb74b0666e6ad5b64db199b4bea025b8",
  deps    = { "bash", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap && test -x " .. p.install_root .. "/usr/bin/shutdown && test -x " .. p.install_root .. "/usr/bin/reboot && test -x " .. p.install_root .. "/sbin/shutdown && test -x " .. p.install_root .. "/sbin/reboot")
  end,
}
