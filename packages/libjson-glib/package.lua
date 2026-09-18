return {
  name    = "libjson-glib",
  version = "1.10.0",
  summary = "GLib-based JSON serialization library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libjson-glib/libjson-glib-1.10.0.tar.gz",
  sha256  = "25c6d0eaf38d9c3d84bb4095ad1e18a4827a75b6d4ec94c9af4d20a78ce90bc7",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("find " .. p.install_root .. "/usr/lib -name 'libjson-glib*.so*' | grep -q .")
  end,
}
