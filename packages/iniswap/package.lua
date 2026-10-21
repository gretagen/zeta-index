return {
  name    = "iniswap",
  version = "1.9.0",
  summary = "Swap init systems (openrc/runit/dinit/systemd) on next boot for Haliade system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.9.0.tar.gz",
  sha256  = "78b3c8a3a6ef7bfca2dc95fa0721fa8c1eeb844aa55d1890ad3c1fc101c046f8",
  deps    = { "bash", "chronos", "nacelle" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap && test -x " .. p.install_root .. "/usr/bin/shutdown && test -x " .. p.install_root .. "/usr/bin/reboot && test -x " .. p.install_root .. "/sbin/shutdown && test -x " .. p.install_root .. "/sbin/reboot")
  end,
}
