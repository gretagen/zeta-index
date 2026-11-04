return {
  name    = "openrgb",
  version = "1.1",
  summary = "Open source RGB lighting control",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/openrgb/openrgb-1.1.tar.gz",
  sha256  = "9a51427176e5c61ec6cf390250facc725876b1d67f849e4ef84c448e4d2b84d2",
  deps    = { "glibc", "libgcc", "libstdc++", "libusb", "hidapi", "qtbase", "mbedtls", "libX11", "libXrandr", "dbus" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/openrgb && test -f " .. p.install_root .. "/usr/share/applications/org.openrgb.OpenRGB.desktop && ! find " .. p.install_root .. "/usr/lib/systemd -name '*.service' 2>/dev/null | grep -q .")
  end,
}
