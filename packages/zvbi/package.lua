return {
  name    = "zvbi",
  version = "0.2.46-1-x86_64",
  summary = "vBI capture and decoding library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/zvbi/zvbi-0.2.46-1-x86_64.pkg.tar.zst",
  sha256  = "81a8bba37c98ee45d2c2ccd56bc2661563ce139d493de046861dde9c289ba5e1",
  deps    = { "libpng", "libX11" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libzvbi-chains.so.0.0.0")
  end,
}
