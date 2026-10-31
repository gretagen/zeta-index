return {
  name    = "iperf3",
  version = "3.22-1-x86_64",
  summary = "TCP/UDP/SCTP bandwidth measurement tool (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/iperf3/iperf3-3.22-1-x86_64.pkg.tar.zst",
  sha256  = "e0b2194a41349388a3d3b1f33f9775f0655e7f417693e7a3561f085408831429",
  deps    = { "glibc", "libstdc++", "libgcc", "lksctp-tools", "openssl" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/iperf3")
  end,
}
