return {
  name    = "wireplumber",
  version = "0.5.15",
  summary = "Session / policy manager for PipeWire (bundled with libwireplumber)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/wireplumber/wireplumber-0.5.15.tar.gz",
  sha256  = "17d15d172ef6bb85175fff8a26a6e2eb2c13627dcff38f09a5c0938454803fb2",
  deps    = { "glibc", "libgcc", "glib", "lua", "pipewire", "systemd-libs" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/wireplumber && test -x " .. p.install_root .. "/usr/bin/wpctl && test -e " .. p.install_root .. "/usr/lib/libwireplumber-0.5.so.0")
  end,
}
