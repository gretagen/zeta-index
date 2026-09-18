return {
  name    = "strace",
  version = "7.2",
  summary = "System call tracer for Linux processes",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/strace/strace-7.2.tar.gz",
  sha256  = "a36a793bbbd3c004c0654de351f5ee9d403fb883347724d556c98fd74e7e7e19",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/strace")
  end,
}
