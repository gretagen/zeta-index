return {
  name    = "pulseaudio",
  version = "17.0-2",
  summary = "Network-capable sound server and client library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pulseaudio/pulseaudio-17.0-2.tar.gz",
  sha256  = "e689aeac4f2d8b29e3d8cdccd2e95c234d0f479941afcb7993b5591d99b4c836",
  deps    = { "glibc", "glib", "dbus", "libsndfile", "libtdb", "wireplumber", "libcap", "libICE", "libSM", "libX11", "libXtst", "libxcb", "avahi", "gst-plugins-base-libs", "gstreamer", "jack2", "libtool", "libsoxr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib64/libpulse-mainloop-glib.so.0 -o -e " .. p.install_root .. "/usr/lib/libpulse-mainloop-glib.so.0 && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib64:" .. p.install_root .. "/usr/lib:" .. p.install_root .. "/usr/lib64/pulseaudio:" .. p.install_root .. "/usr/lib/pulseaudio " .. p.install_root .. "/usr/bin/pulseaudio --version")
  end,
}
