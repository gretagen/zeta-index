return {
  name    = "libtiff",
  version = "4.7.2",
  summary = "TIFF library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libtiff/libtiff-4.7.2-1-x86_64.pkg.tar.zst",
  sha256  = "0627d404a16663e5c2fb11b6698daa69ae93ae8747ee279aecaf3f86bd547a61",
  deps    = { "glibc", "jbigkit", "libdeflate", "libjpeg-turbo", "libwebp", "xz", "libz", "zstd", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
