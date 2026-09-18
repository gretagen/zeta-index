return {
  name    = "xmodmap",
  version = "1.0.12",
  summary = "Utility for modifying keymaps and pointer button mappings in X",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/xmodmap/xmodmap-1.0.12.tar.gz",
  sha256  = "664b357dfbeee31bf19ff4f40d4bd2fb268e5160cc500515867d479c92730448",
  deps    = { "glibc", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/xmodmap")
  end,
}
