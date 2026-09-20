return {
  name    = "vapoursynth",
  version = "79",
  summary = "Video processing framework",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/vapoursynth/vapoursynth-79-1-x86_64.pkg.tar.zst",
  sha256  = "3e30651c0d5de0e28cc9994b18fd63e148e948c35c3def340fb176eed8677e31",
  deps    = { "glibc", "libgcc", "python", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
