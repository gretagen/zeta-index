return {
  name    = "libass",
  version = "0.17.3",
  summary = "Subtitles renderer",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libass/libass-0.17.5-1-x86_64.pkg.tar.zst",
  sha256  = "d157ce85501267f92bddb29e5d1ca534120c69fb55ad8f8447082fecb1fae4bb",
  deps    = { "glibc", "freetype2", "fontconfig", "harfbuzz", "fribidi", "libunibreak", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
