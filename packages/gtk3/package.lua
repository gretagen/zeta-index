return {
  name    = "gtk3",
  version = "3.24.50",
  summary = "GTK+ 3 toolkit",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gtk3/gtk3-3.24.50.tar.gz",
  sha256  = "76383f9d55a59b19cec05da38a0b2e01c5edebdb1219ee31aca0dc4c8c13424e",
  deps    = { "glibc", "at-spi2-core", "cairo", "fontconfig", "fribidi", "gdk-pixbuf", "harfbuzz", "libX11", "libXcomposite", "libXcursor", "libXdamage", "libXext", "libXfixes", "libXi", "libXinerama", "libXrandr", "libepoxy", "libz", "pango", "wayland", "xkbcommon" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgtk-3.so.0 && test -f " .. p.install_root .. "/usr/lib/libgdk-3.so.0 && readelf -d " .. p.install_root .. "/usr/lib/libgdk-3.so.0 | grep -q 'libgdk-3.so.0'")
  end,
}
