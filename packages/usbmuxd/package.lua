return {
  name    = "usbmuxd",
  version = "1.1.1-4-x86_64",
  summary = "uSB Multiplex Daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/usbmuxd/usbmuxd-1.1.1-4-x86_64.pkg.tar.zst",
  sha256  = "1a51644531fb305d9d7d9e7bb7e1ddf7c9d11b17be7117690199d08e49df978f",
  deps    = { "libimobiledevice", "libusb", "libplist" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/usbmuxd")
  end,
}
