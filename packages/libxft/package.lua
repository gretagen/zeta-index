return {
  name    = "libxft",
  version = "2.3.9",
  summary = "FreeType and X11 font rendering library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxft/libxft.pkg.tar.zst",
  sha256  = "a7841ed8e67dc3f94eca4672c8961329dfdd6b67836f8ac720a246d3aab02ecb",
  deps    = { "glibc", "fontconfig", "freetype", "libXrender", "libX11" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
