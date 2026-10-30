return {
  name    = "metacity",
  version = "3.58.1-1-x86_64",
  summary = "window manager of GNOME Flashback",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/metacity/metacity-3.58.1-1-x86_64.pkg.tar.zst",
  sha256  = "3b902de78ef8881d3ab1c08ee0d07a32b10f05a1664cd60bab8bb046c7e8eb0b",
  deps    = { "at-spi2-core", "cairo", "libdconf", "gdk-pixbuf", "glib", "glibc", "gsettings-desktop-schemas", "gtk3", "libcanberra", "libgtop", "libICE", "libSM", "libX11", "libXcomposite", "libXcursor", "libXdamage", "libXext", "libXfixes", "libXinerama", "libXpresent", "libXrandr", "libXrender", "libXres", "pango", "startup-notification" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/metacity")
  end,
}
