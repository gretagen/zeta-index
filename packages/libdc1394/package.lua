return {
  name    = "libdc1394",
  version = "2.2.7-2-x86_64",
  summary = "library to control IEEE 1394 based cameras",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libdc1394/libdc1394-2.2.7-2-x86_64.pkg.tar.zst",
  sha256  = "d9629fc1050d9368eec0c5ab2d1a9ba88da461cfd23d2b3d18ed509f82c3ae83",
  deps    = { "glibc", "libraw1394", "libusb" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libdc1394.so.26.0.1")
  end,
}
