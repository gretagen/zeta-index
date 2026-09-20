return {
  name    = "lib32-libunistring",
  version = "1.4.2",
  summary = "Library for manipulating Unicode strings and C strings (32-bit)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/lib32-libunistring/lib32-libunistring.pkg.tar.zst",
  sha256  = "ee26b7d3dc63070bf1142bf99cfa1aa969f20d24f9e50fc9370d02cc5be4ee37",
  deps    = { "libunistring", "lib32-glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib32")
  end,
}
