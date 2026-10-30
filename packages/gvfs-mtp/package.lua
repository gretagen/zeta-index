return {
  name    = "gvfs-mtp",
  version = "1.62.0-3-x86_64",
  summary = "virtual filesystem implementation for GIO - MTP backend (Android, media player)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gvfs-mtp/gvfs-mtp-1.62.0-3-x86_64.pkg.tar.zst",
  sha256  = "9650bf95ae81d71a9167841a9562e223846bb66e585c034eddfd5296819ae743",
  deps    = { "gvfs", "glib", "glibc", "libgcc", "libgudev", "libmtp", "libusb" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gvfs-mtp-volume-monitor")
  end,
}
