return {
  name    = "iio-sensor-proxy",
  version = "3.9-1-x86_64",
  summary = "iIO accelerometer sensor to input device proxy",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/iio-sensor-proxy/iio-sensor-proxy-3.9-1-x86_64.pkg.tar.zst",
  sha256  = "02d90729e6990f3a8208577a5d2fe65acbd3b6563d6ab4cc08019dbe07c7de6f",
  deps    = { "glib", "glibc", "libgcc", "libgudev", "libssc", "polkit" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/monitor-sensor")
  end,
}
