return {
  name    = "seatd",
  version = "0.9.3-2",
  summary = "Seat management daemon and library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/seatd/seatd-0.9.3-2.tar.gz",
  sha256  = "382c5236fa9c5ee5513acc2d416b34017fbcc36192601c6a6866d17dba7f1bb1",
  deps    = { "glibc", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libseat.so.1 && test -f " .. p.install_root .. "/usr/include/libseat.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libseat.pc && test -x " .. p.install_root .. "/usr/bin/seatd && test -x " .. p.install_root .. "/usr/bin/seatd-launch && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists libseat")
  end,
}
