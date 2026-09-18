return {
  name    = "libinput",
  version = "1.31.3",
  summary = "Input device and event processing library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libinput/libinput-1.31.3.tar.gz",
  sha256  = "8c8deaad05c5490f02a464f68354d4b73af212b624e86ad7b18713e5ce715aa0",
  deps    = { "glibc", "libevdev", "libmtdev", "libwacom", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libinput.so.10")
  end,
}
