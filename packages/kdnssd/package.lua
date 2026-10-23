return {
  name    = "kdnssd",
  version = "6.13.0",
  summary = "KDE: KDNSSD Framework",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kdnssd/kdnssd-6.13.0.tar.gz",
  sha256  = "9983be8464064ab9ee6a45e6451e11cc772c22a8ed0043861e3d1bac59faa3a3",
  deps    = { "glibc", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
