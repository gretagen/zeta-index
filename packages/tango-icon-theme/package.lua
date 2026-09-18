return {
  name    = "tango-icon-theme",
  version = "0.8.90",
  summary = "Tango icon theme",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/tango-icon-theme/tango-icon-theme-0.8.90.tar.gz",
  sha256  = "8bbc8422e7426f2a1e8eb53419fba5c49600d028ee76d05a1771668c4af0915a",
  deps    = { },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/share/icons/Tango/index.theme -a -d " .. p.install_root .. "/usr/share/icons/Tango/16x16/apps")
  end,
}
