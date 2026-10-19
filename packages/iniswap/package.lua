return {
  name    = "iniswap",
  version = "1.8.2",
  summary = "Swap init systems (openrc/runit/dinit/systemd) on next boot for Haliade system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.8.2.tar.gz",
  sha256  = "01d90f595b5418a3e5e9afa4728729c5af44dc90e583362e16df5c266072df40",
  -- declaration ships the per-init handlers in /usr/lib/declaration/iniswap
  -- (including the new systemd.sh), which the swap dispatches to
  deps    = { "bash", "chronos", "declaration" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap && test -x " .. p.install_root .. "/usr/bin/shutdown && test -x " .. p.install_root .. "/usr/bin/reboot && test -x " .. p.install_root .. "/sbin/shutdown && test -x " .. p.install_root .. "/sbin/reboot")
  end,
}
