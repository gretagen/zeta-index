return {
  name    = "whois",
  version = "5.6.6-1-x86_64",
  summary = "Intelligent WHOIS client (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/whois/whois-5.6.6-1-x86_64.pkg.tar.zst",
  sha256  = "b2620c878244426fad9bee2a2128020cd6dbad93cd43e5397f998ee9b2cce2c9",
  deps    = { "glibc", "libidn2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/whois")
  end,
}
