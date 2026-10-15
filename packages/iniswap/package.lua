return {
  name    = "iniswap",
  version = "1.8.0",
  summary = "Swap init systems (openrc/runit/dinit/systemd) on next boot for Haliade OS",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iniswap/iniswap-1.8.0.tar.gz",
  sha256  = "07108607919a8c895e2febf396e564a471f1f11d700e61d796779ca06ef08433",
  -- declaration ships the per-init handlers in /usr/lib/declaration/iniswap
  -- (including the new systemd.sh), which the swap dispatches to
  deps    = { "bash", "chronos", "declaration" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iniswap && test -x " .. p.install_root .. "/usr/bin/shutdown && test -x " .. p.install_root .. "/usr/bin/reboot && test -x " .. p.install_root .. "/sbin/shutdown && test -x " .. p.install_root .. "/sbin/reboot")
  end,
}
