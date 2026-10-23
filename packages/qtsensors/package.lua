return {
  name    = "qtsensors",
  version = "6.8.2",
  summary = "Qt 6 sensors (accelerometer/gyroscope...) module",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/qtsensors/qtsensors-6.8.2.tar.gz",
  sha256  = "38cbe1d5b009b3eb74da17f11a8b328976808bd1ece81f5d27fff4f87413219f",
  deps    = { "glibc", "qtbase", "qtdeclarative" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libQt6Sensors.so.6 -o -e " .. p.install_root .. "/usr/lib64/libQt6Sensors.so.6")
  end,
}
