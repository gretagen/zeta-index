return {
  name    = "libei",
  version = "1.6.0",
  summary = "Library for Emulated Input (libei + libeis)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libei/libei-1.6.0.tar.gz",
  sha256  = "36ca737f08804490bd8268d93aa9aaf71e292f09e4c8ebe2a564c93166ceff06",
  deps    = { "glibc", "xkbcommon", "seatd" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libeis.so.1")
  end,
}
