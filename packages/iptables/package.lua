return {
  name    = "iptables",
  version = "1.8.13",
  summary = "Packet filtering and NAT toolset (iptables/ip6tables, libxtables)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iptables/iptables-1.8.13.tar.gz",
  sha256  = "73aaa6e68127c79d1ab4df54df39d874b0889987938a7e5bb8afe493f8f52dc1",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/sbin/iptables && test -x " .. p.install_root .. "/usr/sbin/ip6tables && test -e " .. p.install_root .. "/usr/lib/libxtables.so.12 && ls " .. p.install_root .. "/usr/sbin/*restore* >/dev/null")
  end,
}
