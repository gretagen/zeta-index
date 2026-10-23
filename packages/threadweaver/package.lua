return {
  name    = "threadweaver",
  version = "6.13.0",
  summary = "KDE: ThreadWeaver",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/threadweaver/threadweaver-6.13.0.tar.gz",
  sha256  = "8221ce993581097493040d6d1eb74174fee70ae509291cd54892228d7857d5a4",
  deps    = { "glibc", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
