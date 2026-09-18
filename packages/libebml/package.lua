return {
  name    = "libebml",
  version = "5.0.0",
  summary = "EBML container library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libebml/libebml-5.0.0.tar.gz",
  sha256  = "1eec385bf18ca1eb054073bb457d7652c39900df517c73481ce1ecdcf38db33b",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libebml.so.5")
  end,
}
