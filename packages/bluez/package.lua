return {
  name    = "bluez",
  version = "5.87-2",
  summary = "Bluetooth protocol stack (bluetoothd, bluetoothctl, and libraries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/bluez/bluez-5.87-2.tar.gz",
  sha256  = "5048398e363b5a4567da5d9bec27ccb61cbc7eebb698bd99d2e4a930712dd393",
  deps    = { "glibc", "glib", "dbus", "readline", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/bluetooth/bluetoothd && test -x " .. p.install_root .. "/usr/bin/bluetoothctl && test -e " .. p.install_root .. "/usr/lib/libbluetooth.so.3 && test -f " .. p.install_root .. "/usr/lib/pkgconfig/bluez.pc && " .. p.install_root .. "/usr/libexec/bluetooth/bluetoothd --version")
  end,
}
