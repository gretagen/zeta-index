return {
  name    = "libheif",
  version = "1.23.7-1-x86_64",
  summary = "High efficiency image file format library (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libheif/libheif-1.23.7-1-x86_64.pkg.tar.zst",
  sha256  = "416cbbca351a9537d58667bb3e3d55fb128a6aa716b7e46cf2494bc1bd416af4",
  deps    = { "glibc", "libstdc++", "libgcc", "libde265", "aom", "x264", "x265", "openh264", "libwebp" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libheif.so.1")
  end,
}
