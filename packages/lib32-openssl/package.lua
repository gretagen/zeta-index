return {
  name    = "lib32-openssl",
  version = "1:3.6.4",
  summary = "The Open Source toolkit for Secure Sockets Layer and Transport Layer Security (3",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-openssl/lib32-openssl.pkg.tar.zst",
  sha256  = "eb9f8a9c158b57a3a48d785983b4cbdc78ca0a8f7939e7765fca7ffab494b3f0",
  deps    = { "lib32-glibc", "openssl", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
