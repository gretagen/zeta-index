return {
  name    = "wine",
  version = "11.17",
  summary = "Compatibility layer for running Windows applications (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/wine/wine-11.17.pkg.tar.zst",
  sha256  = "d251b09f2c7a46b5c434b3b3830c8e0632aeadfff4de9ce7aa0ea0a887f89285",
  deps    = { "glibc", "fontconfig", "freetype", "libX11", "libXcursor", "libXext", "libXi", "libXrandr", "vulkan-loader" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run(p.install_root .. "/usr/bin/wine --version")
  end,
}
