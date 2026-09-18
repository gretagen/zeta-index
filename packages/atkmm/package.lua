return {
  name    = "atkmm",
  version = "2.36.4",
  summary = "C++ bindings for ATK accessibility toolkit",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/atkmm/atkmm-2.36.4.tar.gz",
  sha256  = "a90e9a48a36890c9b4bb0875b2383acfd3b8f6ae2c90270d7815af03e712c6b4",
  deps    = { "glibc", "glib", "glibmm", "libsigc++2", "at-spi2-core" },
  archive = { strip = 1 },
}
