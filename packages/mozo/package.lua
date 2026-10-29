return {
  name    = "mozo",
  version = "1.28.0",
  summary = "Menu editor for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/mozo/mozo-1.28.0.tar.gz",
  sha256  = "c81df20ac7d25d17fa652eda2166d74938b879fe70177b6d7e01a6e392bf4db9",
  deps    = { "gtk3", "mate-menus", "gettext", "mate-panel" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/mozo")
  end,
}
