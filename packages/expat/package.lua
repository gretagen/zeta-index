return {
  name    = "expat",
  version = "2.8.1",
  summary = "XML parsing C library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/expat/expat-2.8.1.tar.gz",
  sha256  = "14f2f374000e641102489d69c8f3484dcd8da5bce7c639811bda0640c00000a8",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libexpat.so.1")
  end,
}
