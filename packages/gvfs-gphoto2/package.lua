return {
  name    = "gvfs-gphoto2",
  version = "1.62.0-3-x86_64",
  summary = "virtual filesystem implementation for GIO - gphoto2 backend (PTP camera, MTP media player)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gvfs-gphoto2/gvfs-gphoto2-1.62.0-3-x86_64.pkg.tar.zst",
  sha256  = "3df11673428264a423b6182f927d04521ecb04e2d4ddbe94bb7c54a9499b24b4",
  deps    = { "gvfs", "glib", "glibc", "libgcc", "libgphoto2", "libgudev" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gvfs-gphoto2-volume-monitor")
  end,
}
