return {
  name    = "connman",
  version = "2.0",
  summary = "Network connection manager for embedded Linux (ConnMan)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/connman/connman-2.0.tar.gz",
  sha256  = "58a0fdbf1d2068d5519812e0f1eda8b126705875c0263a3bb3725881def94621",
  deps    = { "glib", "dbus", "gnutls", "iptables", "systemd-libs", "util-linux-libs", "libffi", "readline", "ncurses" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/connmand && test -x " .. p.install_root .. "/usr/bin/connmanctl && test -f " .. p.install_root .. "/usr/share/dbus-1/system.d/connman.conf")
  end,
}
