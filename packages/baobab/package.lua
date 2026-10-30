return {
  name    = "baobab",
  version = "50.0-1-x86_64",
  summary = "a graphical directory tree analyzer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/baobab/baobab-50.0-1-x86_64.pkg.tar.zst",
  sha256  = "0f0340407294b54ef3883bf7bf2002ba5c6daff77e893dcde0b3403ffd15708f",
  deps    = { "cairo", "libdconf", "glib", "glibc", "graphene", "gsettings-desktop-schemas", "gtk4", "hicolor-icon-theme", "libadwaita", "librsvg", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/baobab")
  end,
}
