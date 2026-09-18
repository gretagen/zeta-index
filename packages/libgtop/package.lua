return {
  name    = "libgtop",
  version = "2.41.3",
  summary = "Library for system information via /proc (libgtop-2.0)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libgtop/libgtop-2.41.3.tar.gz",
  sha256  = "4c3686eeac13acbbd1bc44af164d9bf2b42ecc9dceb9ff11dd272b989242dad2",
  deps    = { "glibc", "glib" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libgtop-2.0.so")
  end,
}
