return {
  name    = "device-mapper",
  version = "2.03.42",
  summary = "Device mapper userspace library and tools (libdevmapper, dmsetup, dmeventd)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/device-mapper/device-mapper-2.03.42.tar.gz",
  sha256  = "d396b9bbf81f83e3d47522b1380e86e8196fcd21658c46c91b862d5038e74d0a",
  deps    = { "glibc", "gcc", "systemd-libs", "bash" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libdevmapper.so.1.02 -a -x " .. p.install_root .. "/usr/bin/dmsetup")
  end,
}
