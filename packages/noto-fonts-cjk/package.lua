return {
  name    = "noto-fonts-cjk",
  version = "2.004",
  summary = "Noto Sans/Serif CJK fonts (TTC collections, all weights)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/noto-fonts-cjk/noto-fonts-cjk-2.004.tar.gz",
  sha256  = "ac81e44662df26ec0093e55d545a6a5f7db12c6138b9bea0d5a5774dc0d00323",
  deps    = { "fontconfig" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/fonts/noto/NotoSansCJK.ttc && test -f " .. p.install_root .. "/usr/share/fonts/noto/NotoSerifCJK.ttc && fc-scan " .. p.install_root .. "/usr/share/fonts/noto/NotoSansCJK.ttc | grep -qi \"noto sans cjk\" && fc-scan " .. p.install_root .. "/usr/share/fonts/noto/NotoSerifCJK.ttc | grep -qi \"noto serif cjk\"")
  end,
}
