return {
  name    = "orca",
  version = "51.1-1-any",
  summary = "screen reader for individuals who are blind or visually impaired",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/orca/orca-51.1-1-any.pkg.tar.zst",
  sha256  = "af2c34aa818f077213e910a8dd592e3deb69c415ca35f77ad22305ba50fd4ec8",
  deps    = { "at-spi2-core", "libdconf", "glib", "glibc", "gobject-introspection-runtime", "gsettings-desktop-schemas", "gst-plugins-base", "gst-plugins-good", "gstreamer", "gtk3", "hicolor-icon-theme", "libgcc", "liblouis", "libwnck3", "pango", "python", "python-brltty", "python-cairo", "python-dasbus", "python-dbus", "python-gobject", "python-psutil", "python-setproctitle", "speech-dispatcher", "xorg-xkbcomp", "xorg-xmodmap" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/orca")
  end,
}
