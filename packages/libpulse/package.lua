return {
  name    = "libpulse",
  version = "17.0+r134+g77d25a1e6-1-x86_64",
  summary = "a featureful, general-purpose sound server (client library)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libpulse/libpulse-17.0+r134+g77d25a1e6-1-x86_64.pkg.tar.zst",
  sha256  = "c24a3b5ebacdae424c885c81770236f7f7d26a017cf7dfca84040e7354bea242",
  deps    = { "bash", "dbus", "glib", "glibc", "libasyncns", "libsndfile", "libxcb", "systemd-libs" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libpulse-mainloop-glib.so.0.0.6")
  end,
}
