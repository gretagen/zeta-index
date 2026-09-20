return {
  name    = "libxrender",
  version = "0.9.12",
  summary = "X Rendering Extension client library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libxrender/libxrender.pkg.tar.zst",
  sha256  = "fed0389073d5b107074eaab48cefcc2716e607865142cde5b579c8ceeefea142",
  deps    = { "libx11", "xorgproto", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
