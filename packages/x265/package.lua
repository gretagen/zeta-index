return {
  name    = "x265",
  version = "4.3",
  summary = "H.265/HEVC encoder",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/x265/x265-4.3-1-x86_64.pkg.tar.zst",
  sha256  = "d798aef9f851c07693b08dee578a1906d2af418f64e611cb96aa433ed4489c27",
  deps    = { "glibc", "libgcc", "libstdc++", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
