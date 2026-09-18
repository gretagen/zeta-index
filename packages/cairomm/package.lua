return {
  name    = "cairomm",
  version = "1.15.4",
  summary = "C++ bindings for the Cairo graphics library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/cairomm/cairomm-1.15.4.tar.gz",
  sha256  = "cbf9571333ac3b4c6b2cc20cad90ccfc5477f9d09555d5704b6fb91c5bc5b04c",
  deps    = { "glibc", "cairo", "glibmm", "libsigc++", "libsigc++2" },
  archive = { strip = 1 },
}
