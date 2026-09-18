return {
  name    = "libpeas",
  version = "1.36.0",
  summary = "GObject plugins library (with libpeas-gtk)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libpeas/libpeas-1.36.0.tar.gz",
  sha256  = "488aa3418722c38a0779305d6a49dd12efd9fb8cacd4d8176a4b31b33f6a5c94",
  deps    = { "glibc", "glib", "gtk3" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libpeas-1.0.so -a -f " .. p.install_root .. "/usr/lib/libpeas-gtk-1.0.so")
  end,
}
