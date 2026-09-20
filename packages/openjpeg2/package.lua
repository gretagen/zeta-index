return {
  name    = "openjpeg2",
  version = "2.5.4",
  summary = "JPEG 2000 library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/openjpeg2/openjpeg2-2.5.4-1-x86_64.pkg.tar.zst",
  sha256  = "f09d64baeda07bc9bc0bb6a08b5f316db372bedd100b9a56f44ffaeace26c1e6",
  deps    = { "glibc", "libpng", "libtiff", "lcms2", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
