return {
  name    = "iproute2",
  version = "7.2.0",
  summary = "Advanced IP routing and network tools (ip, ss, tc, bridge, devlink)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/iproute2/iproute2-7.2.0.tar.gz",
  sha256  = "5ffcb0b5db93f95e1d3989f45fdc475a38882fc2e50c8e22cef15112d0fbf691",
  deps    = { "glibc", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/sbin/ip && test -x " .. p.install_root .. "/sbin/ss && test -x " .. p.install_root .. "/sbin/tc")
  end,
}
