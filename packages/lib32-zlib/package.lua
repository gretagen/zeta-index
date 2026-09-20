return {
  name    = "lib32-zlib",
  version = "1.3.2",
  summary = "Compression library implementing the deflate compression method found in gzip an",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-zlib/lib32-zlib.pkg.tar.zst",
  sha256  = "3828fa9c9e6ca274159562b6511df117a131577ac87b4bd09d71a43ac7105ba8",
  deps    = { "lib32-glibc", "zlib", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
