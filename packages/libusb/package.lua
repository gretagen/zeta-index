return {
  name    = "libusb",
  version = "1.0.30",
  summary = "Cross-platform USB access library (libusb-1.0)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libusb/libusb-1.0.30.tar.gz",
  sha256  = "24811da7bafcde09476cf7156687acadad05f58be3afa328bd589e7720706aee",
  deps    = { "glibc", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/lib/libusb-1.0.so.0.6.0")
  end,
}
