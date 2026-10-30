return {
  name    = "mod_dnssd",
  version = "0.6-10-x86_64",
  summary = "zeroconf module for Apache",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/mod_dnssd/mod_dnssd-0.6-10-x86_64.pkg.tar.zst",
  sha256  = "8bfe94f32ef44e9a817ce01535b5690898b5da9dae55d6dad59218b96c12d3ab",
  deps    = { "apache", "apr", "avahi", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/httpd/modules/mod_dnssd.so")
  end,
}
