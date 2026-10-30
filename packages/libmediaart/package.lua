return {
  name    = "libmediaart",
  version = "1.9.7-2-x86_64",
  summary = "library tasked with managing, extracting and handling media art caches",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libmediaart/libmediaart-1.9.7-2-x86_64.pkg.tar.zst",
  sha256  = "e22326828e38b21efadd00e722ca60ae5e23310a593a38a6973cca497d3173a5",
  deps    = { "gdk-pixbuf", "glib", "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libmediaart-2.0.so.0.907.0")
  end,
}
