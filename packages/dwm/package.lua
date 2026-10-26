return {
  name = "dwm",
  version = "6.5",
  summary = "Suckless dynamic window manager for X11",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/dwm/dwm-6.5.tar.gz",
  sha256 = "bdccd37da83c838a50e3ef89af4a5791d3eab53225fbaa2b4a34839106fe1830",
  deps = { "glibc", "libX11", "libXft", "libXinerama" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dwm")
  end,
}
