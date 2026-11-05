return {
  name    = "libinput",
  version = "1.31.3-2",
  summary = "Input device and event processing library (fixed udev layout)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libinput/libinput-1.31.3-2.tar.gz",
  sha256  = "c6edaa2463cf5c49307f990f24dd035395d8fcda016ad2a25b1d216ee5f021d1",
  deps    = { "glibc", "libevdev", "libmtdev", "libwacom", "systemd-libs", "gtk4", "lua", "wayland" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libinput.so.10 && test -f " .. p.install_root .. "/usr/lib/udev/rules.d/80-libinput-device-groups.rules && test -f " .. p.install_root .. "/usr/lib/udev/rules.d/90-libinput-fuzz-override.rules && ! test -d " .. p.install_root .. "/usr/lib/udev/rules.d/rules.d")
  end,
}
