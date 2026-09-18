return {
  name    = "composefs",
  version = "1.0.8",
  summary = "Composable, immutable, content-addressed filesystem (and library)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/composefs/composefs-1.0.8.tar.gz",
  sha256  = "b98b91eae933c0d09b7cbacc7a7917a9d8d0500138d4915dc9cf7d7193278a28",
  deps    = { "glibc", "libfuse3" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libcomposefs.so.1")
  end,
}
