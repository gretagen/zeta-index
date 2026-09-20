return {
  name    = "lm_sensors",
  version = "1:3.6.2",
  summary = "Collection of user space tools for general SMBus access and hardware monitoring",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lm_sensors/lm_sensors.pkg.tar.zst",
  sha256  = "5363304255a506cf71e1ed4f0464166e5f2aad6f0ae444fe08cafd8c83bf11ff",
  deps    = { "bash", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
