return {
  name    = "libssh2",
  version = "1.11.1",
  summary = "Library implementing the SSH2 protocol",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libssh2/libssh2-1.11.1.tar.gz",
  sha256  = "4b03cfbcb049cd67fceb578151c6c643c8c1ed2d1d18f3ddc4fd6a0dd2cf867b",
  deps    = { "glibc", "openssl", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libssh2.so.1")
  end,
}
