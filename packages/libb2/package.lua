return {
  name    = "libb2",
  version = "0.98.1",
  summary = "BLAKE2 hash function library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libb2/libb2-0.98.1.tar.gz",
  sha256  = "58f5f23e89867b8d28018f203032b96820e26c4b7e9195d380e717f7d87bec86",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libb2.so.1")
  end,
}
