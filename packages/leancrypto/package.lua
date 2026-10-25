return {
  name    = "leancrypto",
  version = "1.0-2",
  summary = "Lean cryptographic library (PQC-resistant algorithms)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/leancrypto/leancrypto-1.0-2.tar.gz",
  sha256  = "2b6b6af93fa00e2deb725f45aad5ad79a60ed5d93bc65f79534bdca4163d3a49",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/libleancrypto.so.1* >/dev/null && test -f " .. p.install_root .. "/usr/lib/pkgconfig/leancrypto.pc && ls " .. p.install_root .. "/usr/include/leancrypto/lc_aead.h >/dev/null")
  end,
}
