return {
  name    = "speex",
  version = "1.5.2",
  summary = "Speex audio codec",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/speex/speex-1.5.2.tar.gz",
  sha256  = "ae0977cb09880363588ed585552054b080c5d090b1a21914188dcf60b84ec891",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libspeex.so.1")
  end,
}
