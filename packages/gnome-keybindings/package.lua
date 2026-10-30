return {
  name    = "gnome-keybindings",
  version = "51.1-1-x86_64",
  summary = "keybindings configuration for GNOME applications",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-keybindings/gnome-keybindings-51.1-1-x86_64.pkg.tar.zst",
  sha256  = "ab0770b8c7f8d256b4ef84419b41ca609bbddfeae08e826e2c257436935bae68",
  deps    = {},
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/share/gettext/its/gnome-keybindings.its")
  end,
}
