return {
  name    = "bluez",
  version = "5.87",
  summary = "Bluetooth protocol stack (bluetoothd, bluetoothctl, and libraries)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/bluez/bluez-5.87.tar.gz",
  sha256  = "ce6006740c36507f4cfbff39903982a77b223269ce77134b2fc062098912bb89",
  deps    = { "glibc", "glib", "dbus", "readline", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/bluetooth/bluetoothd && test -x " .. p.install_root .. "/usr/bin/bluetoothctl && " .. p.install_root .. "/usr/libexec/bluetooth/bluetoothd --version")
  end,
}
