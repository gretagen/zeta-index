return {
  name    = "libjxl",
  version = "0.12.0",
  summary = "JPEG XL image format library",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/refs/heads/main/libjxl/libjxl-0.12.0-1-x86_64.pkg.tar.zst",
  sha256  = "a4e0f65e8ba3a2da1cc348aad4f7f8aee1b504b824a64838fb3d9b2f75cc9449",
  deps    = { "glibc", "libgcc", "libhwy", "brotli", "libpng", "libstdc++" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib")
  end,
}