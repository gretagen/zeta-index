return {
  name    = "libsoup2",
  version = "2.74.3",
  summary = "HTTP client/server library for GNOME (libsoup 2.x)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libsoup2/libsoup2-2.74.3.tar.gz",
  sha256  = "e52cc5b56de1fb0b5a64aad278f0c59f4e3af7edeeb32b67af9d3c01fdad4438",
  deps    = { "glibc", "glib", "libxml2", "sqlite" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libsoup-2.4.so.1")
  end,
}
