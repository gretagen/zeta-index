return {
  name    = "pipewire",
  version = "1.6.8-3",
  summary = "Multimedia processing graph and audio/video daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pipewire/pipewire-1.6.8-3.tar.gz",
  sha256  = "195dfd2c1bd65076e3d98d285c2a257e633fa555f5bc05acc4394ddf5a8ca6f6",
  deps    = { "glibc", "alsa-lib", "bluez", "dbus", "glib", "libgcc", "libsndfile", "ncurses", "openssl", "sbc", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib " .. p.install_root .. "/usr/bin/pipewire --version && test -f " .. p.install_root .. "/usr/lib/spa-0.2/alsa/libspa-alsa.so && test -f " .. p.install_root .. "/usr/lib/spa-0.2/support/libspa-dbus.so && test -f " .. p.install_root .. "/usr/lib/spa-0.2/bluez5/libspa-bluez5.so")
  end,
}
