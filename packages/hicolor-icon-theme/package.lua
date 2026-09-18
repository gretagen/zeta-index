return {
  name    = "hicolor-icon-theme",
  version = "0.18",
  summary = "Default fallback icon theme for XDG icon themes",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/hicolor-icon-theme/hicolor-icon-theme-0.18.tar.gz",
  sha256  = "dff43d684062ddad19ab792ae6e2ff8143afc307e01a4784e694a7f0de8c5ec8",
  deps    = { "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/icons/hicolor/index.theme -a -d " .. p.install_root .. "/usr/share/icons/hicolor/scalable/apps")
  end,
}
