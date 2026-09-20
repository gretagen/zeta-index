return {
  name    = "lib32-libldap",
  version = "2.7.1",
  summary = "Lightweight Directory Access Protocol (LDAP) client libraries (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libldap/lib32-libldap.pkg.tar.zst",
  sha256  = "f9765cde5006bcbc902eeae08c7bbe6f3feff59485d7058f1a0c134db9d17896",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
