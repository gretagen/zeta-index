return {
  name    = "lightdm-gtk-greeter",
  version = "2.0.9-2-x86_64",
  summary = "gTK+ greeter for LightDM",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lightdm-gtk-greeter/lightdm-gtk-greeter-2.0.9-2-x86_64.pkg.tar.zst",
  sha256  = "cb2d0de9a3c036299861074c81a3ff29197e87ed400f803602dbc357ef33e808",
  deps    = { "gtk3", "lightdm" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/lightdm-gtk-greeter")
  end,
}
