return {
  name    = "libcgif",
  version = "0.5.4-1-x86_64",
  summary = "a fast and lightweight GIF encoding library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libcgif/libcgif-0.5.4-1-x86_64.pkg.tar.zst",
  sha256  = "dc2782ebc369456e09c9c6ad9957b55169843b83f22fa6d1daf12d03ec99d6a5",
  deps    = { "glibc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libcgif.so.0.5.4")
  end,
}
