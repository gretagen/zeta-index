return {
  name    = "i3status-rust",
  version = "0.40.1",
  summary = "Resource-friendly system status bar for i3/sway",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/i3status-rust/i3status-rust-0.40.1.tar.gz",
  sha256  = "267c1f29f49355207fe7852810033b6a2636702d7c5f18748b3d3aaaf2dbdc71",
  deps    = { "glibc", "gcc", "pulseaudio", "lm-sensors" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/i3status-rs && " .. p.install_root .. "/usr/bin/i3status-rs --version | grep -q 0.40")
  end,
}
