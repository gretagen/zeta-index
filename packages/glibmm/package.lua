return {
  name    = "glibmm",
  version = "2.80.1",
  summary = "C++ bindings for GLib",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glibmm/glibmm-2.80.1.tar.gz",
  sha256  = "787f26dc8862f97f76e23f6ffeeac6d2e66e127982e156e554288d3a4bf6cc21",
  deps    = { "glibc", "glib", "libsigc++", "libsigc++2" },
  archive = { strip = 1 },
}
