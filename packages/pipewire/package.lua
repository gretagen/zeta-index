return {
  name    = "pipewire",
  version = "1.6.8-6",
  summary = "Multimedia processing graph and audio/video daemon",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pipewire/pipewire-1.6.8-6.tar.gz",
  sha256  = "35cfa1449c83464ebebfbe0efc708504d9add88351ef804ace4dcad264bea0a1",
  deps    = { "glibc", "alsa-lib", "bluez", "dbus", "glib", "libgcc", "libsndfile", "ncurses", "openssl", "sbc", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("LD_LIBRARY_PATH=" .. p.install_root .. "/usr/lib " .. p.install_root .. "/usr/bin/pipewire --version && test -f " .. p.install_root .. "/usr/lib/spa-0.2/alsa/libspa-alsa.so && test -f " .. p.install_root .. "/usr/lib/spa-0.2/support/libspa-dbus.so && test -f " .. p.install_root .. "/usr/lib/spa-0.2/bluez5/libspa-bluez5.so && test -x " .. p.install_root .. "/etc/init.d/pipewire && test -x " .. p.install_root .. "/etc/init.d/pipewire-pulse && test -x " .. p.install_root .. "/etc/service/pipewire/run && test -x " .. p.install_root .. "/etc/service/pipewire-pulse/run && test -f " .. p.install_root .. "/etc/dinit.d/pipewire && grep -q 'depends-on: elogind' " .. p.install_root .. "/etc/dinit.d/pipewire && grep -q 'XDG_RUNTIME_DIR' " .. p.install_root .. "/etc/dinit.d/pipewire-pulse && test -L " .. p.install_root .. "/etc/dinit.d/boot.d/pipewire && test -L " .. p.install_root .. "/etc/dinit.d/boot.d/pipewire-pulse && test -f " .. p.install_root .. "/etc/shepherd.d/pipewire.scm && test -f " .. p.install_root .. "/etc/shepherd.d/pipewire-pulse.scm && test -f " .. p.install_root .. "/usr/lib/systemd/system/pipewire.service && test -f " .. p.install_root .. "/usr/lib/systemd/system/pipewire.socket && test -f " .. p.install_root .. "/usr/lib/systemd/system/pipewire-pulse.service && test -f " .. p.install_root .. "/usr/lib/systemd/system/pipewire-pulse.socket && ! test -e " .. p.install_root .. "/usr/lib/systemd/user/pipewire.service && grep -q '/usr/bin/pipewire-pulse' " .. p.install_root .. "/etc/init.d/pipewire-pulse")
  end,
}
