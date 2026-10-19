return {
  name    = "iniswap",
  version = "1.8.3",
  summary = "Swap init systems (openrc/runit/dinit/systemd) on next boot for Haliade system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.8.3.tar.gz",
  sha256  = "3995e24b26ced1adc0272038ddb21c0e369bdfe37ed32808309dc4359ca0429c",
  deps    = { "bash", "chronos", "declaration" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap && test -x " .. p.install_root .. "/usr/bin/shutdown && test -x " .. p.install_root .. "/usr/bin/reboot && test -x " .. p.install_root .. "/sbin/shutdown && test -x " .. p.install_root .. "/sbin/reboot")
  end,
}
