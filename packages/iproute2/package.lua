return {
  name    = "iproute2",
  version = "7.2.0-3",
  summary = "Advanced IP routing and network tools (ip, ss, tc, bridge, devlink)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iproute2/iproute2-7.2.0-3.tar.gz",
  sha256  = "c8908f2378a75751e768a1d62aeb15f7512827068700ec04e4229a1585b2668b",
  deps    = { "glibc", "libcap", "libelf", "libbpf", "libmnl", "libtirpc", "iptables" },
  archive = { strip = 1 },
  test    = function(p)
    -- both locations ship the real binaries: usr/bin for normal PATHs,
    -- sbin for root's sbin-first login path (also overwrites busybox's
    -- leftover ip link there on ReProvide).
    p:run("test -x " .. p.install_root .. "/usr/bin/ip && test -x " .. p.install_root .. "/usr/bin/ss && test -x " .. p.install_root .. "/usr/bin/tc")
    p:run("test -x " .. p.install_root .. "/sbin/ip && test -x " .. p.install_root .. "/sbin/ss")
  end,
}
