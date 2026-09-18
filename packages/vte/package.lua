return {
  name    = "vte",
  version = "0.76.6",
  summary = "Terminal emulator widget library (GTK3)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/vte/vte-0.76.6.tar.gz",
  sha256  = "c6be0fab8df138e993a11d71eb32befda188f2bcf634f5ebd24c3ffbb0c20764",
  deps    = { "glibc", "gtk3", "pango", "cairo", "glib", "pcre2", "fribidi", "gnutls", "icu", "lz4", "libX11", "libXpresent", "libXft" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libvte-2.91.so.0")
  end,
}
