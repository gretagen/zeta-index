return {
  name    = "kdsoap-ws-discovery-client",
  version = "0.4.0",
  summary = "KDE: Library for finding WS-Discovery devices in the network using Qt5 and KDSoap.",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kdsoap-ws-discovery-client/kdsoap-ws-discovery-client-0.4.0.tar.gz",
  sha256  = "3e0b0575c6882a52b0475a0b1b71de92dfb2d6dd315e7e83cf6d825c9282a286",
  deps    = { "glibc", "qtbase", "gcc", "kdsoap" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
