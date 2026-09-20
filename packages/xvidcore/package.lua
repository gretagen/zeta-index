return {
  name    = "xvidcore",
  version = "1.3.7",
  summary = "Xvid MPEG-4 codec",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/xvidcore/xvidcore-1.3.7-4-x86_64.pkg.tar.zst",
  sha256  = "02f16d9aefb29f12ec3c5e3386475e1417a4331c5ee32dfc0d6075325e5cb889",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
