return {
  name    = "lxmenu-data",
  version = "0.1.5",
  summary = "Freedesktop menu definitions for LXDE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxmenu-data/lxmenu-data-0.1.5.tar.gz",
  sha256  = "d0bd8f1c8a5e2f9a4f288235dc73914172b679c03368463382bd64c49affbd6b",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root .. "/usr/share/desktop-directories")
  end,
}
