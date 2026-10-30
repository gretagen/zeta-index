return {
  name    = "gnome-remote-desktop",
  version = "51.0-2-x86_64",
  summary = "gNOME Remote Desktop server",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-remote-desktop/gnome-remote-desktop-51.0-2-x86_64.pkg.tar.zst",
  sha256  = "edd6b5a11e0e3e4f69d551514d4ed5e582f4c725db879abe6975f08b030d9264",
  deps    = { "cairo", "libdconf", "fuse3", "glib", "glibc", "krb5", "libdrm", "libei", "libepoxy", "libfdk-aac", "libgcc", "libnotify", "pipewire", "libsecret", "libva", "xkbcommon", "opus", "polkit", "systemd", "systemd-libs", "tpm2-tss", "vulkan-loader" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgrdpcsc.so.0.0.0")
  end,
}
