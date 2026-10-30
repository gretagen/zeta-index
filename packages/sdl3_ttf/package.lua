return {
  name    = "sdl3_ttf",
  version = "3.2.2-3-x86_64",
  summary = "a library that allows you to use TrueType fonts in your SDL applications (Version 3)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/sdl3_ttf/sdl3_ttf-3.2.2-3-x86_64.pkg.tar.zst",
  sha256  = "0f51cfe5370558091cf14529bfef557b8465c1c8491809b10db95666294ada39",
  deps    = { "glibc", "sdl3", "freetype", "harfbuzz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libSDL3_ttf.so.0.2.2")
  end,
}
