return {
  name = "libXft",
  version = "2.3.9",
  summary = "X11 FreeType-based font rendering library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXft/libXft-2.3.9.tar.gz",
  sha256 = "fb1768166d90704625f792e4d5c9dbd3bbe47fa097536ec262b2e1983f05072f",
  deps = { "glibc", "fontconfig", "freetype", "libX11", "libXrender" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXft.so.2")
  end,
}
