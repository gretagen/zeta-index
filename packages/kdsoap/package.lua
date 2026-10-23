return {
  name    = "kdsoap",
  version = "2.3.0",
  summary = "Qt-based SOAP client/server library (Qt6)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kdsoap/kdsoap-2.3.0.tar.gz",
  sha256  = "955334e2560e32f7d34187886d3a92b97d6ca7405202704baaccbfe4d13b4eca",
  deps    = { "glibc", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -name '*KDSoap*qt6*' -o -name '*kdsoap*qt6*' | grep -q .")
  end,
}
