return {
  name    = "libXv",
  version = "1.0.13",
  summary = "X11 Video extension library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXv/libXv-1.0.13.tar.gz",
  sha256  = "643d19b2f6356c5ad6d9b32715f510d62205038a52a27638de92bac8c1ef36d1",
  deps    = { "glibc", "libXext", "libX11", "xorgproto" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libXv.so")
  end,
}
