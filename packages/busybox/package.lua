return {
  name    = "busybox",
  version = "1.37.0",
  summary = "Swiss army knife of embedded Linux",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/busybox/busybox-1.37.0.tar.gz",
  sha256  = "d29f0d6d37a5f4ed57ff525026336af133f2f41b710a80dfda3a6fe96ae140f6",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/bin/busybox")
  end,
}
