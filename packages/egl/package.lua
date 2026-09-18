return {
  name    = "egl",
  version = "1.5",
  summary = "EGL interface library (stub pkgconfig for libglvnd EGL)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/egl/egl-1.5.tar.gz",
  sha256  = "346e5d6aeeb4143933348dd8897135ccda2ba29a079d5a3c164a7427c39f411b",
  deps    = { "glibc" },
  archive = { strip = 1 },
}
