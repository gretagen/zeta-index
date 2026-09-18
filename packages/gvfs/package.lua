return {
  name    = "gvfs",
  version = "1.60.3",
  summary = "Virtual filesystem for GNOME (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gvfs/gvfs-1.60.3-1-x86_64.pkg.tar.zst",
  sha256  = "c3287b30d1122172fec886d45734dd9cd9a46337b0797e29f8618d2c7e21050f",
  deps    = { "libdconf", "fuse3", "gcr-4", "glib", "gsettings-desktop-schemas", "libarchive", "libbluray", "libcdio", "libcdio-paranoia", "libgcrypt", "libgudev", "libsecret", "libsoup3", "polkit", "procps-ng", "udisks2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("ls " .. p.install_root .. "/usr/lib/gvfs/")
  end,
}
