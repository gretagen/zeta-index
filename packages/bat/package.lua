return {
  name    = "bat",
  version = "0.26.1",
  summary = "A cat clone with wings",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/bat/bat-0.26.1-2-x86_64.pkg.tar.zst",
  sha256  = "56a25f57aee69437d5b18434b963c5ec4a41f85acaee9f3d80622861d8164689",
  deps    = { "glibc", "libgit2", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/bat")
  end,
}