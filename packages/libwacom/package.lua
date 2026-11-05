return {
  name    = "libwacom",
  version = "2.20.0",
  summary = "Wacom tablet database and library (fixed udev layout)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libwacom/libwacom-2.20.0.tar.gz",
  sha256  = "92fe334369c1797650e2611e2304a83b86fb6e07fd67a4cb4d2d3d06ea5e85ad",
  deps    = { "glibc", "libevdev", "libgudev", "glib", "libxml2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libwacom.so.9 && test -f " .. p.install_root .. "/usr/lib/udev/rules.d/65-libwacom.rules && test -f " .. p.install_root .. "/usr/lib/udev/hwdb.d/65-libwacom.hwdb && ! test -d " .. p.install_root .. "/usr/lib/udev/rules.d/rules.d")
  end,
}
