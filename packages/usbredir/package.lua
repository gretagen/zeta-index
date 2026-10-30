return {
  name    = "usbredir",
  version = "0.15.0-1-x86_64",
  summary = "uSB traffic redirection protocol",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/usbredir/usbredir-0.15.0-1-x86_64.pkg.tar.zst",
  sha256  = "a2771405dc6fe2ca7f631ba35aefd788b22ba59f1c232613948cf628e7ba238a",
  deps    = { "glib", "glibc", "libusb" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libusbredirhost.so.1.0.3")
  end,
}
