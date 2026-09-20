return {
  name    = "libreoffice",
  version = "26.2.5.2",
  summary = "LibreOffice office suite (single binary .deb package)",
  url     = "https://github.com/gretagen/zeta-deliverance/releases/download/libreoffice-26.2.5.2/libreoffice-26.2.5.2.deb",
  sha256  = "e38377322e9153d503f7e6505ef6a5304f41ecb24385983d257b6fe50bffe4f2",
  deps    = { "glibc", "liblangtag", "libxrender", "libxext", "libx11", "libxml2", "libxslt", "curl", "dbus", "expat", "fontconfig", "freetype2", "glib2", "icu", "lcms2", "libjpeg-turbo", "libpng", "libtiff", "libwebp", "python", "nss", "nspr", "poppler", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/lib/libreoffice/program/soffice.bin "
      .. "&& test -L " .. p.install_root .. "/usr/bin/soffice "
      .. "&& test -f " .. p.install_root .. "/etc/libreoffice/psprint.conf")
  end,
}
