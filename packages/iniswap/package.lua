return {
  name    = "iniswap",
  version = "1.8.1",
  summary = "Swap init systems (openrc/runit/dinit/systemd) on next boot for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.8.1.tar.gz",
  sha256  = "9435f485f0eb3e27f77435c964438470e58b1191e1830a9650af36fcd7c42ab3",
  -- declaration ships the per-init handlers in /usr/lib/declaration/iniswap
  -- (including the new systemd.sh), which the swap dispatches to
  deps    = { "bash", "chronos", "declaration" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap && test -x " .. p.install_root .. "/usr/bin/shutdown && test -x " .. p.install_root .. "/usr/bin/reboot && test -x " .. p.install_root .. "/sbin/shutdown && test -x " .. p.install_root .. "/sbin/reboot")
  end,
}
