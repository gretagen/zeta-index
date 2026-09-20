return {
  name    = "lib32-nss",
  version = "3.129",
  summary = "Network Security Services (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-nss/lib32-nss.pkg.tar.zst",
  sha256  = "d61d8889e8107c573c3a9fdc97310ea4c6b9c98f5410f6e886e8a2f7f8bb7589",
  deps    = { "lib32-glibc", "lib32-nspr", "nss", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
