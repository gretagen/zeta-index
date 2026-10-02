return {
  name    = "iproute2",
  version = "7.2.0-2",
  summary = "Advanced IP routing and network tools (ip, ss, tc, bridge, devlink)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iproute2/iproute2-7.2.0-2.tar.gz",
  sha256  = "38835f177aa49ff22fe774b523c709739768f2fa43c8dd412feaa4563a0c2a0d",
  deps    = { "glibc", "libcap", "libelf", "libbpf", "libmnl", "libtirpc", "iptables" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/ip && test -x " .. p.install_root .. "/usr/bin/ss && test -x " .. p.install_root .. "/usr/bin/tc")
  end,
}
