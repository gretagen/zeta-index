return {
  name    = "wdisplays",
  version = "1.1.3-2-x86_64",
  summary = "graphical application for configuring Wayland displays",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/wdisplays/wdisplays-1.1.3-2-x86_64.pkg.tar.zst",
  sha256  = "3d23d21b743711a0da9436b1b39daad41bf4941646b9e0eacd15738ee54cd5a3",
  deps    = { "cairo", "glibc", "glib", "gtk3", "hicolor-icon-theme", "libepoxy", "pango", "wayland" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/wdisplays")
  end,
}
