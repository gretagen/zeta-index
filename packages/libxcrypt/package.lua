return {
  name    = "libxcrypt",
  version = "4.4.36",
  summary = "Extended crypt library for password hashing (libcrypt.so.2)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libxcrypt/libxcrypt-4.4.36.tar.gz",
  sha256  = "5310897bda6630fa70732ed0727f13197c4ef796f8b3351c1261ea36daa30383",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcrypt.so.2")
  end,
}
