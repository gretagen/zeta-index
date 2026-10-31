return {
  name    = "fwupd",
  version = "2.1.9-1-x86_64",
  summary = "Firmware update daemon and client tools (fwupdmgr) (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/fwupd/fwupd-2.1.9-1-x86_64.pkg.tar.zst",
  sha256  = "6285ccabb87106bacd193090263f5059b57c9d766895df6e975de3f5f176a5ce",
  deps    = { "bash", "curl", "fwupd-efi", "glib", "glibc", "gnutls", "hicolor-icon-theme", "libcurl", "libdrm", "libgcc", "libmbim", "libmm-glib", "libmnl", "passim", "libqmi", "libusb", "libxmlb", "libjcat", "libgusb", "polkit", "shared-mime-info", "sqlite", "systemd-libs", "tpm2-tss", "udisks2", "xz-utils", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/fwupdmgr")
  end,
}
