return {
  name    = "btop",
  version = "1.4.7",
  summary = "Resource monitor (bpytop ported to C++)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/btop/btop-1.4.7.tar.gz",
  sha256  = "9f1351764987cdf65be9b7525bb00c14e771ce160d109141229ef251dcf27bd5",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/btop")
  end,
}
