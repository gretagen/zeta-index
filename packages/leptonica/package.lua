return {
  name    = "leptonica",
  version = "1.87.0-2-x86_64",
  summary = "Library for image processing and analysis (Arch binary)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/leptonica/leptonica-1.87.0-2-x86_64.pkg.tar.zst",
  sha256  = "f7a239ee5f8492edfd6b2e61b3c7d4371ab27990db8f10de5bbbdadc50fafb71",
  deps    = { "glibc", "giflib", "libjpeg-turbo", "libpng", "libtiff", "libwebp", "openjpeg2", "libz" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/libleptonica.so.6")
  end,
}
