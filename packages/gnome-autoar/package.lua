return {
  name    = "gnome-autoar",
  version = "0.5.2-1-x86_64",
  summary = "Automatic archive extraction for GNOME",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-autoar/gnome-autoar-0.5.2-1-x86_64.pkg.tar.zst",
  sha256  = "07d9a46600ef9adb00206971c1c5a778cf4fe6173288e6ed0fd0b2eea4376d35",
  deps    = { "glib", "glibc", "libarchive", "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgnome-autoar-0.so")
  end,
}
