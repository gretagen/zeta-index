return {
  name    = "gpgme",
  version = "2.1.0",
  summary = "Library providing access to GnuPG crypto functions",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gpgme/gpgme-2.1.0.tar.gz",
  sha256  = "9fb3ab9ce867f884384406606543234c599d3f130219a09c2aac46aca3d1a06a",
  deps    = { "glibc", "libgpg-error", "libassuan" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgpgme.so.45")
  end,
}
