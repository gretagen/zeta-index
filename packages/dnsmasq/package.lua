return {
  name    = "dnsmasq",
  version = "2.93",
  summary = "Lightweight DNS forwarder and DHCP server",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dnsmasq/dnsmasq-2.93.tar.gz",
  sha256  = "51ad92c3a67e8436e8348ed7bc603954a3e90517e39d02a41f59f0f8f488f7b3",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/sbin/dnsmasq")
  end,
}
