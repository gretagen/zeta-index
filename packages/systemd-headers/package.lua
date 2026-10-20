return {
  name    = "systemd-headers",
  version = "262",
  summary = "Systemd/libsystemd public API headers (sd-bus, sd-event, ...)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/systemd-headers/systemd-headers-262.tar.gz",
  sha256  = "1a1c6e087611f2556ed72bbbce623e94650793cb11579760c0722c06aef23daf",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/systemd/sd-bus.h && test -f " .. p.install_root .. "/usr/include/systemd/sd-daemon.h && test -f " .. p.install_root .. "/usr/include/systemd/sd-event.h")
  end,
}
