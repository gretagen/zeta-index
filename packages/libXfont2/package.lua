return {
  name = "libXfont2",
  version = "2.0.9",
  summary = "X11 font rasterization and font server client library",
  url = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libXfont2/libXfont2-2.0.9.tar.gz",
  sha256 = "38cd8b67782967972159250e4fa8569a29a66d0749afa93f8e1ce5f81575ca44",
  deps = { "glibc", "libz", "freetype", "libfontenc" },
  archive = { strip = 1 },
  test = function(p)
    p:run("test -f '" .. p.install_root .. "'/usr/lib/libXfont2.so.2")
  end,
}
