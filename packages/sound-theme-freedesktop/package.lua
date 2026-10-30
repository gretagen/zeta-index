return {
  name    = "sound-theme-freedesktop",
  version = "0.8-6-any",
  summary = "freedesktop sound theme",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/sound-theme-freedesktop/sound-theme-freedesktop-0.8-6-any.pkg.tar.zst",
  sha256  = "266d5198ed35ed265f7e64cb014b48bd1e5a9eda1defcce817cce200ffaa6c19",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/licenses/sound-theme-freedesktop/CREDITS")
  end,
}
