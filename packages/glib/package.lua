return {
  name    = "glib",
  version = "2.88.1-2",
  summary = "Low-level core utility library (gir-enabled rebuild)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glib/glib-2.88.1-2.tar.gz",
  sha256  = "01a7d237f92ba67ceb403618db70b38c29820ffee46caf2d00cd7e46bab0df53",
  deps    = { "glibc", "libffi", "libz", "pcre2", "libelf", "util-linux", "gobject-introspection" },
  archive = { strip = 1 },
}
