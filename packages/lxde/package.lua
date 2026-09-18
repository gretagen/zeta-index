return {
  name    = "lxde",
  version = "0.1.0",
  summary = "LXDE desktop environment (meta-package)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxde/lxde-0.1.0.tar.gz",
  sha256  = "a7ceb11a21533d029f49015fdb90619a58e0369ee303ce07a1dbf215ef6f296b",
  deps    = {
    "openbox", "pcmanfm", "lxpanel", "lxsession", "lxappearance",
    "lxmenu-data", "libfm", "libfm-gtk3", "libwnck3", "curl",
    "gtk3", "polkit",
  },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -d " .. p.install_root)
  end,
}
