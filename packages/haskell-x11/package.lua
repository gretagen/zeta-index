return {
  name    = "haskell-x11",
  version = "1.10.3-7-x86_64",
  summary = "a Haskell binding to the X11 graphics library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/haskell-x11/haskell-x11-1.10.3-7-x86_64.pkg.tar.zst",
  sha256  = "321e7d3d22b23ea26ec4fef2e2357441f17620f82cc092f0239d18ce7dd5c827",
  deps    = { "ghc-libs", "libX11", "libXinerama", "libXrandr", "libxss", "haskell-data-default-class" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libHSX11-1.10.3-HWgzJgi0fCl89s6WpBOoXu-ghc9.6.7.so")
  end,
}
