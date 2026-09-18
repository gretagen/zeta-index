return {
  name    = "gnupg",
  version = "2.5.21",
  summary = "The GNU Privacy Guard — GnuPG encryption and signing tool",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gnupg/gnupg-2.5.21.tar.gz",
  sha256  = "725529841bf8455dd48151c14d7608b4908dce030f81c36cd53ff97bb1039bf1",
  deps    = { "glibc", "npth", "libgpg-error", "libgcrypt", "libksba", "libassuan", "ntbtls", "pinentry" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/gpg")
  end,
}
