return {
  name    = "xmonad",
  version = "0.18.1-39-x86_64",
  summary = "lightweight X11 tiled window manager written in Haskell",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/xmonad/xmonad-0.18.1-39-x86_64.pkg.tar.zst",
  sha256  = "c8fbf3509b79d38afec8a5225f5c36abf5eb680c3274a0ffc22256f701fe3f9e",
  deps    = { "ghc", "ghc-libs", "haskell-x11", "haskell-data-default-class", "haskell-setlocale" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/xmonad")
  end,
}
