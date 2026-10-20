return {
  name    = "stb",
  version = "20261019",
  summary = "Single-file public domain C/C++ libraries (stb headers)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/stb/stb-20261019.tar.gz",
  sha256  = "a7f72bcf8589416746d2b4b151f9b0fb35d5cbe70a20ba3ec6e0aee6c30d2092",
  deps    = {},
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/include/stb/stb_image_resize2.h && test -f " .. p.install_root .. "/usr/include/stb/stb_image_write.h && test -f " .. p.install_root .. "/usr/include/stb/stb_image.h")
  end,
}
