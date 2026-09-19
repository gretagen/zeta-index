return {
  name    = "lxlauncher",
  version = "0.2.8",
  summary = "LXDE EeePC-style launcher (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/lxlauncher/lxlauncher-0.2.8-2-x86_64.pkg.tar.zst",
  sha256  = "c6a787acb2f74ca68f330e0cbc56abd3e512ba375ec710aed532f16d7ac81344",
  deps    = { "cairo", "gdk-pixbuf", "glib", "gtk3", "libX11", "lxmenu-data", "menu-cache", "startup-notification" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lxlauncher")
  end,
}
