return {
  name = "dwm",
  version = "6.5",
  summary = "Suckless dynamic window manager for X11",
  url = "https://dl.suckless.org/dwm/dwm-6.5.tar.gz",
  sha256 = "21d79ebfa9f2fb93141836c2666cb81f4784c69d64e7f1b2352f9b970ba09729",
  deps = { "glibc", "libX11", "libXft", "libXinerama" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/dwm")
  end,
}
