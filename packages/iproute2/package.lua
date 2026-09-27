return {
  name    = "iproute2",
  version = "7.2.0",
  summary = "Advanced IP routing and network tools (ip, ss, tc, bridge, devlink)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iproute2/iproute2-7.2.0.tar.gz",
  sha256  = "60cdc3499f40abb465b67ecb528b8be2650d884bc1c8b9dce25b6f137439fad7",
  deps    = { "glibc", "libcap", "libelf", "libbpf", "libmnl", "libtirpc", "iptables" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/sbin/ip && test -x " .. p.install_root .. "/sbin/ss && test -x " .. p.install_root .. "/sbin/tc")
  end,
}
