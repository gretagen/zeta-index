return {
  name    = "upower",
  version = "1.90.10",
  summary = "Power management daemon and tools",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/upower/upower-1.90.10.tar.gz",
  sha256  = "ffa540e9ff8981a0a63473acc103df7dc87bddc6ac6f19b083acc012ef8d12dd",
  deps    = { "glibc", "glib", "libgudev", "polkit", "libz" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libupower-glib.so.3")
  end,
}
