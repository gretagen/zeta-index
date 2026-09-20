return {
  name    = "lib32-lm_sensors",
  version = "1:3.6.2",
  summary = "Collection of user space tools for general SMBus access and hardware monitoring ",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-lm_sensors/lib32-lm_sensors.pkg.tar.zst",
  sha256  = "0d2e75d99503602b0b339a32ada558d969eb9647d29be5464d7a037c49308394",
  deps    = { "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
