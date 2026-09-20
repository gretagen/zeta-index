return {
  name    = "lib32-krb5",
  version = "1.22.2",
  summary = "The Kerberos network authentication system (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-krb5/lib32-krb5.pkg.tar.zst",
  sha256  = "ab47fb4f67a71e750b8cc2e9331eb8e791dde799e7c95012f940d73c606bd23a",
  deps    = { "lib32-e2fsprogs", "lib32-gcc-libs", "lib32-glibc", "lib32-keyutils", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
