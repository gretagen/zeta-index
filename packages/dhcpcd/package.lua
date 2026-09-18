return {
  name    = "dhcpcd",
  version = "10.2.2",
  summary = "DHCP client daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dhcpcd/dhcpcd-10.2.2.tar.gz",
  sha256  = "09dbba0f063407a1a9567c75406042de3ce22b5128b3537fa5a4af2f44b621d7",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/sbin/dhcpcd")
  end,
}
