return {
  name    = "gnome-characters",
  version = "51.0-1-x86_64",
  summary = "a character map application",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-characters/gnome-characters-51.0-1-x86_64.pkg.tar.zst",
  sha256  = "84b2b57f1a9ec2fb4bcc444b5ad457e83840764bbffe518da3e9c306b140ec26",
  deps    = { "libdconf", "noto-fonts-emoji", "gjs", "glib", "glibc", "gnome-desktop-4", "gtk4", "hicolor-icon-theme", "libadwaita" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/org.gnome.Characters/libgc.so")
  end,
}
