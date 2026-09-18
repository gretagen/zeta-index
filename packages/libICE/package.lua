return {
  name    = "libICE",
  version = "1.1.2",
  summary = "X Inter-Client Exchange library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libICE/libICE-1.1.2.tar.gz",
  sha256  = "cbe6e67f2e657b8d960ab48636b0ade1a25e936bb597b5cf13f92ee93259b974",
  deps    = { "glibc", "libX11", "xorgproto", "xtrans" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libICE.so.6")
  end,
}
