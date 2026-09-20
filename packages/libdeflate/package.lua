return {
  name    = "libdeflate",
  version = "1.26",
  summary = "Fast compression/decompression library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libdeflate/libdeflate-1.26-1-x86_64.pkg.tar.zst",
  sha256  = "3bd3b1ca9a333ab97ebb55f760963f64817b6c4c0d54747b37187f36ab60deab",
  deps    = { "glibc", },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}
