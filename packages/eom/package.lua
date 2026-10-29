return {
  name    = "eom",
  version = "1.28.0",
  summary = "Image viewer for MATE",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/eom/eom-1.28.0.tar.gz",
  sha256  = "cdc1ab6471889984d4da739e2ce3cb2e7abefc2875f3a6d26e732ea59dba83c4",
  deps    = { "librsvg", "glibc", "glib", "gtk3", "dbus-glib", "gettext", "exempi", "lcms2", "libexif", "libjpeg-turbo", "mate-desktop", "libpeas" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -n \"$(find " .. p.install_root .. "/usr -mindepth 1 -type f | head -1)\" && test -x " .. p.install_root .. "/usr/bin/eom")
  end,
}
