-- Noto Sans CJK, installed straight from the upstream release zip: the
-- TTC collections exceed GitHub's 100MB per-file limit as repacked
-- tarballs, and Zeta extracts .zip payloads natively (archive.lua since
-- the zip support landed). Flat root files + install strategy = fonts
-- land in /usr/share/fonts/noto.

return {
  name    = "noto-fonts-cjk-sans",
  version = "2.004",
  summary = "Noto Sans CJK fonts (TTC, all weights, upstream release zip)",
  url     = "https://github.com/notofonts/noto-cjk/releases/download/Sans2.004/00_NotoSansCJK.ttc.zip",
  sha256  = "a56077736038875f3a5b1e6715b2713a2bd049cc0bf0dfdf645927b070d38bfc",
  deps    = { "fontconfig" },
  install = function(p)
    p:install(p.work_dir .. "/NotoSansCJK.ttc", "usr/share/fonts/noto/NotoSansCJK.ttc")
    p:install(p.work_dir .. "/LICENSE", "usr/share/fonts/noto/LICENSE-NotoSansCJK")
  end,
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/fonts/noto/NotoSansCJK.ttc")
    p:run("fc-scan " .. p.install_root .. "/usr/share/fonts/noto/NotoSansCJK.ttc | grep -qi \"noto sans cjk\"")
  end,
}
