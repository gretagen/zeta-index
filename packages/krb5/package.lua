return {
  name    = "krb5",
  version = "1.22.2",
  summary = "MIT Kerberos V5 (libraries and tools)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/krb5/krb5-1.22.2.tar.gz",
  sha256  = "9e7984158a6a3ebbe7cc01e1386ca853c4e33c9af294b260b57397273ad2cb20",
  deps    = { "glibc", "openssl", "libedit", "keyutils", "lmdb" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libkrb5.so.3 && test -f " .. p.install_root .. "/usr/include/krb5.h && test -x " .. p.install_root .. "/usr/bin/krb5-config && test -x " .. p.install_root .. "/usr/bin/kinit")
  end,
}
