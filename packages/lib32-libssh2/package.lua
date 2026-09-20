return {
  name    = "lib32-libssh2",
  version = "1.11.1",
  summary = "A library implementing the SSH2 protocol as defined by Internet Drafts (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libssh2/lib32-libssh2.pkg.tar.zst",
  sha256  = "622313e575f2ba7926ed12b7b20e486e856e5dde15bea4c336e8fcaee3b6ac85",
  deps    = { "lib32-glibc", "libssh2", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
