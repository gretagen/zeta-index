return {
  name    = "libheif",
  version = "1.23.7-1-x86_64",
  summary = "an HEIF and AVIF file format decoder and encoder",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libheif/libheif-1.23.7-1-x86_64.pkg.tar.zst",
  sha256  = "416cbbca351a9537d58667bb3e3d55fb128a6aa716b7e46cf2494bc1bd416af4",
  deps    = { "aom", "glibc", "libgcc", "libde265", "libstdc++", "libwebp", "openh264", "x264", "x265" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libheif.so.1.23.7")
  end,
}
