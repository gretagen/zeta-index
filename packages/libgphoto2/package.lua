return {
  name    = "libgphoto2",
  version = "2.5.34-1-x86_64",
  summary = "digital camera access library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libgphoto2/libgphoto2-2.5.34-1-x86_64.pkg.tar.zst",
  sha256  = "99515e2a4de727f41cc996fa881a401861a4cbfe6d27ca4bd6b2856f53b74f0d",
  deps    = { "bash", "curl", "gd", "glibc", "libexif", "libjpeg-turbo", "libltdl", "libtiff", "libusb", "libxml2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgphoto2.so.6.4.0")
  end,
}
