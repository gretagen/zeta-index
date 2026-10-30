return {
  name    = "zxing-cpp",
  version = "3.1.1-1-x86_64",
  summary = "an open-source, multi-format linear/matrix barcode image processing library implemented in C++",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/zxing-cpp/zxing-cpp-3.1.1-1-x86_64.pkg.tar.zst",
  sha256  = "4d8c25e0234e264fa0a34687c674fa2ae0d257734783a6982c4985163621141c",
  deps    = { "glibc", "libgcc", "libstdc++", "zint" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libZXing.so.3.1.1")
  end,
}
