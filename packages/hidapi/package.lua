return {
  name    = "hidapi",
  version = "0.15.0",
  summary = "Simple library for communicating with USB and Bluetooth HID devices",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/hidapi/hidapi.pkg.tar.zst",
  sha256  = "58eee8119ef8ca47a6f10c073ee3a89d9d3958b77b94aa7d05c331e73f50f5b8",
  deps    = { "systemd-libs", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
