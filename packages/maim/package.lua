return {
  name    = "maim",
  version = "5.8.2",
  summary = "Screenshot utility that takes a shot of the screen X11 (maim = make image magick)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/maim/maim-5.8.2-1-x86_64.pkg.tar.zst",
  sha256  = "f16b25f1a823a2e1d3065ee233968dad8dbe2e505023075ee80621a19617ff90",
  deps    = { "glibc", "slop", "glew", "libX11", "libXext", "libpng", "libXfixes", "libXcomposite", "libXrandr", "libjpeg-turbo", "libXrender", "libwebp", "icu" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/maim")
  end,
}
