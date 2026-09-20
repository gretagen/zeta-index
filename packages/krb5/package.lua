return {
  name    = "krb5",
  version = "1.22.2",
  summary = "The Kerberos network authentication system",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/krb5/krb5.pkg.tar.zst",
  sha256  = "38dcaf86512559c47e9b084ce78f417b5e8b0634feb8cb80b5edeab2c40b704f",
  deps    = { "bash", "e2fsprogs", "openssl", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
