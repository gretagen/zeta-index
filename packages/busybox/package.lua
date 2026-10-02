return {
  name    = "busybox",
  version = "1.37.0-2",
  summary = "Swiss army knife of embedded Linux",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/busybox/busybox-1.37.0-2.tar.gz",
  sha256  = "57b9dd8c81c018f6f235594e5593192b148d8727784163192c6b515035fc1354",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/bin/busybox")
    -- the network applets moved from sbin to usr/bin for normal-user PATHs
    p:run("test -L " .. p.install_root .. "/usr/bin/arp && test -L " .. p.install_root .. "/usr/bin/ifconfig && test -L " .. p.install_root .. "/usr/bin/route && test -L " .. p.install_root .. "/usr/bin/brctl && test -L " .. p.install_root .. "/usr/bin/arping")
  end,
}
