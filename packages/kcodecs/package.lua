return {
  name    = "kcodecs",
  version = "6.13.0",
  summary = "KDE: KCodecs provide a collection of methods to manipulate strings using various encodings",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/kcodecs/kcodecs-6.13.0.tar.gz",
  sha256  = "2947dcc4671ca6f911691bf03ba025ac0456eda72cc79e5aa139de7a1169e022",
  deps    = { "glibc", "qtbase", "gcc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr -type f | grep -q .")
  end,
}
