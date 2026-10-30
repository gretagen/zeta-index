return {
  name    = "tecla",
  version = "51.0-1-x86_64",
  summary = "keyboard layout viewer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/tecla/tecla-51.0-1-x86_64.pkg.tar.zst",
  sha256  = "9e6a638390734e45d240024b57fe25402c4aea9ccf7820e1ca0881a679809d52",
  deps    = { "glib", "glibc", "gtk4", "hicolor-icon-theme", "libadwaita", "libgcc", "xkbcommon", "pango", "wayland" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/tecla")
  end,
}
