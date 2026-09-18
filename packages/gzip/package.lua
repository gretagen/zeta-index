return {
  name    = "gzip",
  version = "1.13",
  summary = "GNU gzip compression utilities",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gzip/gzip-1.13.tar.gz",
  sha256  = "f1f5257ef1a2be3e882020b25cf44f004826c482a62792c8b027c25088e72d30",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gzip")
  end,
}
