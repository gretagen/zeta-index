return {
  name = "pipewire",
  version = "1.6.8-2",
  summary = "Multimedia processing graph and audio/video daemon",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/pipewire/pipewire-1.6.8-2.tar.gz",
  sha256 = "ed653abbad8a0718162806882a4c8afffed3f89c6e2dded07b4c2b09a5d96bd6",
  -- 1.6.8-2: the original build ran without alsa-lib/dbus/libsndfile, so
  -- meson silently dropped the ALSA SPA plugin (wireplumber could probe no
  -- cards) and support/libspa-dbus.so ("can't load dbus library"). Rebuilt
  -- against the packaged dev files; deps now also cover the real linkage
  -- (openssl for raop-sink and ncurses for pw-top were always there).
  deps = { "glibc", "alsa-lib", "dbus", "libgcc", "libsndfile", "ncurses", "openssl", "systemd-libs" },
  archive = { strip = 1 },
  test = function(p)
    p:env_set("LD_LIBRARY_PATH", p.install_root .. "/usr/lib")
    p:run(p.install_root .. "/usr/bin/pipewire --version")
    -- regression guard for the audio-hardware fix: the ALSA SPA plugin and
    -- the DBus support library must be part of the payload
    p:run("test -f " .. p.install_root .. "/usr/lib/spa-0.2/alsa/libspa-alsa.so")
    p:run("test -f " .. p.install_root .. "/usr/lib/spa-0.2/support/libspa-dbus.so")
  end,
}
