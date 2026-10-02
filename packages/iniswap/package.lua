return {
  name    = "iniswap",
  version = "1.5.0",
  summary = "Swap init systems (openrc/runit/dinit) on next boot for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.5.0.tar.gz",
  sha256  = "5c20d80734383fe861afc1f3791399d98aa9ad78bc4308a86be82b7e6a192485",
  deps    = { "bash", "chronos" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap && test -x " .. p.install_root .. "/usr/bin/shutdown && test -x " .. p.install_root .. "/usr/bin/reboot && test -x " .. p.install_root .. "/sbin/shutdown && test -x " .. p.install_root .. "/sbin/reboot")
  end,
}
