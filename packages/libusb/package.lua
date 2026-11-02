return {
  name    = "libusb",
  version = "1.0.30-2",
  summary = "user-space USB library (libusb-1.0)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libusb/libusb-1.0.30-2.tar.gz",
  sha256  = "f6e817a35ee0dadb915b4f1eaf29643200a7ee4447e361a6ab761aee806df47f",
  deps    = { "glibc", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libusb-1.0.so.0 && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists libusb-1.0")
  end,
}
