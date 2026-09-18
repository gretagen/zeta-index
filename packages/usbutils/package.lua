return {
  name    = "usbutils",
  version = "019",
  summary = "USB utilities (lsusb, usb-devices, usbhid-dump)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/usbutils/usbutils-019.tar.gz",
  sha256  = "dc0b6af6e05d3dfd83b9aa1f7fe6e465af4529b2dd1d847404db067524715330",
  deps    = { "glibc", "libusb", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/lsusb")
  end,
}
