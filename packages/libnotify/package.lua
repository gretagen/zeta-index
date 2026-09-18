return {
  name    = "libnotify",
  version = "0.8.8",
  summary = "Desktop notification library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libnotify/libnotify-0.8.8.tar.gz",
  sha256  = "16a280cb4416e865fc7c55f6ea06f0b6ea9e67f73d4f9c460636d30cf782af3f",
  deps    = { "glibc", "gtk3", "gdk-pixbuf", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libnotify.so.4")
  end,
}
