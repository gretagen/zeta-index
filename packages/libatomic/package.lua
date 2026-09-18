return {
  name    = "libatomic",
  version = "16.2.1",
  summary = "GCC atomic operations support library (libatomic.so.1)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libatomic/libatomic-16.2.1.tar.gz",
  sha256  = "8244f8b11dacc2729bf6d5f5ad9933176be69cb4bf450b461e8d10f07ca28156",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libatomic.so.1")
  end,
}
