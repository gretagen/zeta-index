return {
  name    = "pulseaudio",
  version = "17.0-3",
  summary = "Network-capable sound server and client library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pulseaudio/pulseaudio-17.0-3.tar.gz",
  sha256  = "8f353abfcc3ab65b033781273ca427303557eed2fcc4313dc841fa33afe796b2",
  deps    = { "glibc", "glib", "dbus", "libsndfile", "libtdb", "wireplumber", "libcap", "libICE", "libSM", "libX11", "libXtst", "libxcb", "avahi", "gst-plugins-base-libs", "gstreamer", "jack2", "libtool", "libsoxr" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpulse-mainloop-glib.so.0 && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libpulse.pc && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists libpulse-mainloop-glib && LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib:" .. p.install_root .. "/usr/lib/pulseaudio " .. p.install_root .. "/usr/bin/pulseaudio --version")
  end,
}
