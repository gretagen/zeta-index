return {
  name    = "libjxl",
  version = "0.11.1",
  summary = "JPEG XL image format library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/libjxl/libjxl-0.11.1.tar.gz",
  sha256  = "78ae0eece5247e8bdab8f36b085a37027a64c1172d305b60bc74655897949b3c",
  deps    = { "glibc", "libhwy", "brotli", "libpng" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/libjxl.so.0.11")
  end,
}
