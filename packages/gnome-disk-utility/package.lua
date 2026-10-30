return {
  name    = "gnome-disk-utility",
  version = "46.1-3-x86_64",
  summary = "disk Management Utility for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-disk-utility/gnome-disk-utility-46.1-3-x86_64.pkg.tar.zst",
  sha256  = "a2b388687a1a7f51407f6bc569711ccdd7a89d75bdd36daebfcb5ae052f6b10b",
  deps    = { "at-spi2-core", "cairo", "libdconf", "gdk-pixbuf", "glib", "glibc", "gtk3", "hicolor-icon-theme", "libcanberra", "libdvdread", "libgcc", "libhandy", "libnotify", "libpwquality", "libsecret", "pango", "parted", "systemd-libs", "udisks2", "xz-utils" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/gnome-disk-image-mounter")
  end,
}
