return {
  name    = "libzip",
  version = "1.11.4",
  summary = "C library for reading, creating, and modifying zip archives",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libzip/libzip-1.11.4.tar.gz",
  sha256  = "87b656e3d9afa2ce46a7fbdd5f0a52a90b208c2c21ce265f75373d8d488b0030",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libzip.so")
  end,
}
