return {
  name    = "lzo",
  version = "2.10",
  summary = "Portable lossless data compression library (liblzo2)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lzo/lzo-2.10.tar.gz",
  sha256  = "08a506794b472366cc3eeb73e45b316a22adbfb3004f6095b6789823466bc99e",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/lib/liblzo2.so.2.0.0")
  end,
}
