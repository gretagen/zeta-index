return {
  name    = "libudev-headers",
  version = "257",
  summary = "libudev development files (header + pkg-config)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libudev-headers/libudev-headers-257.tar.gz",
  sha256  = "7cb3f6b8abd50ddba24ebed6ecc9e28a0ea4b4908dfebcbe2c64101e3d49114b",
  deps    = { "glibc" },
  archive = { strip = 1 },
}
