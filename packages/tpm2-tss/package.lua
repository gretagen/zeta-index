return {
  name    = "tpm2-tss",
  version = "4.2.0",
  summary = "Implementation of the TCG Trusted Platform Module 2.0 Software Stack (TSS2)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/tpm2-tss/tpm2-tss.pkg.tar.zst",
  sha256  = "7aa2a963f99bcd51e4f3b2587fa8f374a7cfa09ec65749cc9a72fa6f3ad34fdc",
  deps    = { "curl", "json-c", "openssl", "util-linux-libs", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
