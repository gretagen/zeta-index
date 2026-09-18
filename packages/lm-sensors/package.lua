return {
  name    = "lm-sensors",
  version = "3.6.2",
  summary = "Hardware sensors monitoring library (libsensors)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lm-sensors/lm-sensors-3.6.2.tar.gz",
  sha256  = "f8d791bf4e50d80a5698f697210c4f6c160d5feb4cb1289700d3b72d13c685c1",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libsensors.so.5")
  end,
}
