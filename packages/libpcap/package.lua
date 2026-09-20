return {
  name    = "libpcap",
  version = "1.11.0",
  summary = "A system-independent interface for user-level packet capture",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libpcap/libpcap.pkg.tar.zst",
  sha256  = "ed40e51f84882865d254571015a8ad403bf9c0ec743cf454e8223199de34580d",
  deps    = { "libnl", "sh", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
