-- Noto Serif CJK, installed straight from the upstream release zip (same
-- GitHub file-size story as the sans package; the serif zip holds a single
-- flat TTC member).

return {
  name    = "noto-fonts-cjk-serif",
  version = "2.003",
  summary = "Noto Serif CJK fonts (TTC, all weights, upstream release zip)",
  url     = "https://github.com/notofonts/noto-cjk/releases/download/Serif2.003/01_NotoSerifCJK.ttc.zip",
  sha256  = "5009285197f068fe9a58f2cf8d6d312f4bf185887305751aae2608db4e02e48f",
  deps    = { "fontconfig" },
  install = function(p)
    p:install(p.work_dir .. "/NotoSerifCJK.ttc", "usr/share/fonts/noto/NotoSerifCJK.ttc")
  end,
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/fonts/noto/NotoSerifCJK.ttc")
    p:run("fc-scan " .. p.install_root .. "/usr/share/fonts/noto/NotoSerifCJK.ttc | grep -qi \"noto serif cjk\"")
  end,
}
