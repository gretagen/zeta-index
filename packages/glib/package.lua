return {
  name    = "glib",
  version = "2.88.1",
  summary = "GLib utility library, GObject, and GIO",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glib/glib-2.88.1.tar.gz",
  sha256  = "a435a99a248279e5f4d027df425671323325145c1686a7a7a3c399ddaf1f6aa0",
  deps    = { "glibc", "libffi", "libz", "pcre2" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libglib-2.0.so.0")
  end,
}
