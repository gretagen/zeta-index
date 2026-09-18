return {
  name    = "libwnck3",
  version = "43.3",
  summary = "Window Navigator Construction Kit (GTK3)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libwnck3/libwnck3-43.3.tar.gz",
  sha256  = "c45e472763536aca7a15c9051cc8194fc1cce0aedac517b908a7d10baa7d6f49",
  deps    = { "glibc", "gtk3" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libwnck-3.so.0")
  end,
}
