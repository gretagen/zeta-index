return {
  name    = "colord-sane",
  version = "1.4.8-2-x86_64",
  summary = "system daemon for managing color devices (SANE support)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/colord-sane/colord-sane-1.4.8-2-x86_64.pkg.tar.zst",
  sha256  = "39a569c96c4424ecf43ab8033681f2ec05194a269b33d89a926c6f2803bcb1a7",
  deps    = { "colord", "libcolord", "dbus", "glib", "glibc", "libgcc", "libgudev", "sane" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/colord-plugins/libcolord_sensor_sane.so")
  end,
}
