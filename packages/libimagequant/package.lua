return {
  name    = "libimagequant",
  version = "4.4.1-2-x86_64",
  summary = "library for high-quality conversion of RGBA images to 8-bit indexed-color (palette) images",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/libimagequant/libimagequant-4.4.1-2-x86_64.pkg.tar.zst",
  sha256  = "c26846108d4cf718c844bcdf2323293d5cc5c9f847e891bd95239efbcf34e24b",
  deps    = { "libgcc" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libimagequant.so.0.4.1")
  end,
}
