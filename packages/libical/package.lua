return {
  name    = "libical",
  version = "4.0.7",
  summary = "iCalendar (RFC 5545) implementation library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libical/libical-4.0.7.tar.gz",
  sha256  = "f6883b9a08cf78929f8a52e6034ece54a1e99b175d0aeaa040ace0774638142d",
  deps    = { "glibc", "gcc", "libgcc", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libical.so.4.0 && test -f " .. p.install_root .. "/usr/include/libical/ical.h && test -f " .. p.install_root .. "/usr/lib/pkgconfig/libical.pc")
  end,
}
