return {
  name    = "libldap",
  version = "2.7.1",
  summary = "Lightweight Directory Access Protocol (LDAP) client libraries",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libldap/libldap.pkg.tar.zst",
  sha256  = "bc83324fccf39b11cad9b5d672db02eef9db7fa406d335169f7732c75ac7906f",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
