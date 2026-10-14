return {
  name    = "lm-sensors",
  version = "3.6.2-2",
  summary = "Hardware sensors monitoring library (libsensors)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/lm-sensors/lm-sensors-3.6.2-2.tar.gz",
  sha256  = "ff440f9edc8a01125c0184ecfcd8bf53e37ec487b18d9e06061fbfffae4cc371",
  deps    = { "glibc" },
  archive = { strip = 1 },
}
