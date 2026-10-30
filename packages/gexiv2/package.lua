return {
  name    = "gexiv2",
  version = "0.16.2-2-x86_64",
  summary = "gObject-based wrapper around the Exiv2 library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gexiv2/gexiv2-0.16.2-2-x86_64.pkg.tar.zst",
  sha256  = "4cbb5a08bca8cc3b436da947d7a97eebf0f5ad8781f81c7a772ccf21475201b6",
  deps    = { "exiv2", "glib", "glibc", "libgcc", "libstdc++", "gexiv2-common" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgexiv2-0.16.so.4.16.2")
  end,
}
