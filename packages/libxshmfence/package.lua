return {
  name    = "libxshmfence",
  version = "1.3.3",
  summary = "X shared-memory fence sync primitives",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libxshmfence/libxshmfence-1.3.3.tar.gz",
  sha256  = "ed1a6fa5eb4f3529112d327836dbe49de3d292b11f4663c5b4c58002da96b63a",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libxshmfence.so.1")
  end,
}
