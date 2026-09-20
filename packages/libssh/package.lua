return {
  name    = "libssh",
  version = "0.12.2",
  summary = "SSH protocol library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libssh/libssh-0.12.2-1-x86_64.pkg.tar.zst",
  sha256  = "f7d543fa557482e52c0eac1d5cb348b0385fbf44bb1244d5b656d87010056a2b",
  deps    = { "glibc", "openssl", "libz", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
