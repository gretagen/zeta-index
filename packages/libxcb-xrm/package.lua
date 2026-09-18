return {
  name    = "libxcb-xrm",
  version = "1.3",
  summary = "X resource manager extension",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libxcb-xrm/libxcb-xrm-1.3.tar.gz",
  sha256  = "e40b6a6e65da0d649a1ffed37562b92b171305c4f7a0d67f680a257bb4cf355d",
  deps    = { "glibc", "libxcb", "xcb-util" },
  archive = { strip = 1 },
}
