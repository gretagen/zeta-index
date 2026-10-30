return {
  name    = "bluez-obex",
  version = "5.87-2-x86_64",
  summary = "BlueZ OBEX object exchange service (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/bluez-obex/bluez-obex-5.87-2-x86_64.pkg.tar.zst",
  sha256  = "60af47718ac449d508a2adc78c25c61a0f0cd8eb7f2f8437b9c8ab1f994f8956",
  deps    = { "glib", "libical", "dbus", "readline", "systemd-libs", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/bluetooth/obexd")
  end,
}
