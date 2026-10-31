return {
  name    = "herbstluftwm",
  version = "0.9.6-1-x86_64",
  summary = "Manual tiling window manager for X11",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/herbstluftwm/herbstluftwm-0.9.6-1-x86_64.pkg.tar.zst",
  sha256  = "ea748733cc262767ce51620e25fc62714f8e3c7833b9ee49399d30ee49595f9e",
  deps    = { "freetype", "libXext", "libXfixes", "libXft", "libXinerama", "libXrandr", "libXrender" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/herbstluftwm")
  end,
}
