return {
  name    = "at-spi2-core",
  version = "2.56.1-2",
  summary = "Accessibility Technologies core (AT-SPI2, ships atk)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/at-spi2-core/at-spi2-core-2.56.1-2.tar.gz",
  sha256  = "7e8b070736e282378fcfe0517386058f98b4e1b69362524646b7797bcaad6a19",
  deps    = { "glibc", "libX11", "libXi", "libXtst", "libxml2", "dbus", "glib", "systemd-libs", "gobject-introspection" },
  archive = { strip = 1 },
}
