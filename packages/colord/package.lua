return {
  name    = "colord",
  version = "1.4.8-2-x86_64",
  summary = "Color management daemon (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/colord/colord-1.4.8-2-x86_64.pkg.tar.zst",
  sha256  = "383373868edc94b47c59386577e39be1ea156156047471ddfdc7b6725700183e",
  deps    = { "dbus", "libdconf", "glib", "glibc", "lcms2", "libgcc", "libgudev", "libgusb", "polkit", "shared-mime-info", "sqlite", "systemd-libs", "libcolord" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/colord")
  end,
}
