return {
  name    = "xdg-desktop-portal",
  version = "1.22.1",
  summary = "Desktop integration portal frontend (D-Bus)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xdg-desktop-portal/xdg-desktop-portal-1.22.1.tar.gz",
  sha256  = "d8518d9d3ff9d0cda68f1dc051085da01ced54bd8b3382940d3aa0676fb560fb",
  deps    = { "glibc", "gdk-pixbuf", "pipewire", "libfuse3", "libjson-glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/libexec/xdg-desktop-portal")
  end,
}
