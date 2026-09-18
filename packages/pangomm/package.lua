return {
  name    = "pangomm",
  version = "2.54.0",
  summary = "C++ bindings for Pango",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pangomm/pangomm-2.54.0.tar.gz",
  sha256  = "36326915e808d72286bc1e743248f3276ea79a4614a4750f62d67946c8d53012",
  deps    = { "glibc", "pango", "glibmm", "cairomm", "libsigc++2" },
  archive = { strip = 1 },
}
