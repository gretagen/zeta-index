return {
  name    = "double-conversion",
  version = "3.4.0",
  summary = "IEEE-754 binary/decimal conversion library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/double-conversion/double-conversion-3.4.0.tar.gz",
  sha256  = "f5f74ce8f271cc03ca9e08ecbc93decca4f22c3fdf602e464f2a9612fc9fdc9f",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libdouble-conversion.so.3")
  end,
}
