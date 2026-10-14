return {
  name    = "libliftoff",
  version = "0.5.0",
  summary = "KMS plane allocation library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libliftoff/libliftoff-0.5.0.tar.gz",
  sha256  = "e853e809af210101a1b61e870dee3d0a777696e75bfc58f0ae0a95317baa34cc",
  deps    = { "glibc", "libdrm" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libliftoff.so.0")
  end,
}
