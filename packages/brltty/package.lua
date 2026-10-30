return {
  name    = "brltty",
  version = "6.9.1-3-x86_64",
  summary = "braille display driver for Linux/Unix",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/brltty/brltty-6.9.1-3-x86_64.pkg.tar.zst",
  sha256  = "98286a33136485dc41608a90192e7edb1ac8fa0dcdb718dae07bf87a49c51428",
  deps    = { "alsa-lib", "at-spi2-core", "bash", "bluez", "dbus", "espeak-ng", "expat", "glib", "glibc", "gpm", "icu", "libcap", "liblouis", "libspeechd", "libXaw", "libXt", "libX11", "libXfixes", "libXtst", "ncurses", "pcre2", "polkit", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/brltty")
  end,
}
