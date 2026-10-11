return {
  name    = "anipaper",
  version = "2022.11.07",
  summary = "X11+SDL2 animated wallpaper setter and video player",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/anipaper/anipaper-2022.11.07.tar.gz",
  sha256  = "1c16a04edb6db394d1994cad11cbbd3aaf456825b398963ba48bd3d2dbb31593",
  deps    = { "glibc", "ffmpeg", "sdl2", "libX11", "libstdc++", "libatomic" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -x " .. p.install_root .. "/usr/bin/anipaper")
  end,
}
