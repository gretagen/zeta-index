return {
  name    = "pinentry",
  version = "1.3.3",
  summary = "PIN or passphrase entry dialog for GnuPG",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pinentry/pinentry-1.3.3.tar.gz",
  sha256  = "cc840d60f564e57943224d89b4de1a18742f878a7f29d68982b89f5ada5043b4",
  deps    = { "glibc", "libgpg-error", "libassuan", "libtinfo" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/bin/pinentry-curses")
  end,
}
