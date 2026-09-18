return {
  name    = "lxpanel",
  version = "0.10.1",
  summary = "LXDE desktop panel",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lxpanel/lxpanel-0.10.1.tar.gz",
  sha256  = "4a8df2a030aaa3a106a25cadf98046e35575bbbae8806c20742d8109a75f4dc6",
  deps    = { "glibc", "libfm-gtk3", "gtk3", "menu-cache", "lxmenu-data", "alsa-lib", "curl", "libwnck3" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxpanel")
  end,
}
