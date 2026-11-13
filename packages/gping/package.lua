return {
  name    = "gping",
  version = "1.21.0",
  summary = "Ping with a graph (Rust binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gping/gping-1.21.0.tar.gz",
  sha256  = "8d6a7928bd2b5ec2adb6a613a1a67588cda717a272ed9d9b31402c25ee74d714",
  deps    = { "glibc", "libgcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gping")
  end,
}
