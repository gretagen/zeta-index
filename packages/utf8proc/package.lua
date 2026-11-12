return {
  name    = "utf8proc",
  version = "2.12.0",
  summary = "Unicode processing library (utf8proc)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/utf8proc/utf8proc-2.12.0.tar.gz",
  sha256  = "cd41d2568e7260665d39b10eb7553ad1afc896a06f87b4252d62f441866421a1",
  deps    = { "glibc" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/utf8proc.h && ls " .. p.install_root .. "/usr/lib/libutf8proc.a | grep -q . && PKG_CONFIG_PATH=" .. p.install_root .. "/usr/lib/pkgconfig pkg-config --exists libutf8proc")
  end,
}
