return {
  name    = "gnome-menus",
  version = "3.38.1-1-x86_64",
  summary = "GNOME menu library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gnome-menus/gnome-menus-3.38.1-1-x86_64.pkg.tar.zst",
  sha256  = "6b9041082ad40497916779d78ef6db1aaf35fb004dc9ad1bc9b63c18288f60f3",
  deps    = { "glib", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgnome-menu-3.so")
  end,
}
