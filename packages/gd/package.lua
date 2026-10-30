return {
  name    = "gd",
  version = "2.3.3-9-x86_64",
  summary = "library for the dynamic creation of images by programmers",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gd/gd-2.3.3-9-x86_64.pkg.tar.zst",
  sha256  = "8f3677fbb4c6986f2a8fa3c7b9082d8cac194787ecb0b3b9429e67165324fb21",
  deps    = { "fontconfig", "libXpm", "libwebp", "libavif", "libheif" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libgd.so.3.0.11")
  end,
}
