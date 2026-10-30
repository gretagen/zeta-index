return {
  name    = "gnome-session",
  version = "51.0-1-x86_64",
  summary = "the GNOME Session Handler",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-session/gnome-session-51.0-1-x86_64.pkg.tar.zst",
  sha256  = "487b5397d8de38d48440cca19c86fb36f0617480f6988d03677c5671d0ae6cf4",
  deps    = { "libdconf", "glib", "glibc", "gnome-desktop-4", "gsettings-desktop-schemas", "libgcc", "systemd-libs", "xdg-desktop-portal-gnome" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-session")
  end,
}
