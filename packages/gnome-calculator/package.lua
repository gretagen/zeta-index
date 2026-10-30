return {
  name    = "gnome-calculator",
  version = "51.1-1-x86_64",
  summary = "gNOME Scientific calculator",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-calculator/gnome-calculator-51.1-1-x86_64.pkg.tar.zst",
  sha256  = "eaf65cbdf99479395dfe4d56817c6cb1fae64c261912a6de730dfc8fc2c0f57a",
  deps    = { "libdconf", "glib", "glibc", "gmp", "gtk4", "gtksourceview5", "hicolor-icon-theme", "libadwaita", "libgee", "libmpc", "libsoup3", "libxml2", "mpfr" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-calculator")
  end,
}
