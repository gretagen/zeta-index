return {
  name    = "net-snmp",
  version = "5.9.5.2-2-x86_64",
  summary = "a suite of applications used to implement SNMP v1, SNMP v2c and SNMP v3 using both IPv4 and",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/net-snmp/net-snmp-5.9.5.2-2-x86_64.pkg.tar.zst",
  sha256  = "96fbdd29330b421a1b8243cefd919a85881af64a2dd1c0bbcf768512405f7b37",
  deps    = { "libnsl", "libpcap", "lm-sensors", "openssl", "pciutils", "pcre2", "perl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libnetsnmp.so.45.0.0")
  end,
}
