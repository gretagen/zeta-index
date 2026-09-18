return {
  name    = "leancrypto",
  version = "1.0",
  summary = "Lean cryptography library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/leancrypto/leancrypto-1.0.tar.gz",
  sha256  = "2f51d0324713995c5dd33ac77f8951b29c7cb2687058658398377cdccf09bb8e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libleancrypto.so.1")
  end,
}
