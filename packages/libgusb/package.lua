return {
  name    = "libgusb",
  version = "0.4.9-2-x86_64",
  summary = "GObject wrapper for libusb (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libgusb/libgusb-0.4.9-2-x86_64.pkg.tar.zst",
  sha256  = "433495cbfe5d8b7b0b6f8b7ee09cc308461a2fdfd66edee0227d1a4b02d31a3b",
  deps    = { "glib", "libjson-glib", "libusb" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgusb.so.2")
  end,
}
