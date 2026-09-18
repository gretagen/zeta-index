return {
  name    = "libevdev",
  version = "1.13.6",
  summary = "Wrapper library for evdev devices",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libevdev/libevdev-1.13.6.tar.gz",
  sha256  = "47a3292f22bfbd7b8314ec9dc79a4d38825d20001177f95d2d29cb419859b0b5",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libevdev.so.2")
  end,
}
