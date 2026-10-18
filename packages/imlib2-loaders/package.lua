return {
  name    = "imlib2-loaders",
  version = "1.12.6",
  summary = "Image format loaders for imlib2 (png, jpeg, gif, bmp, webp, ...)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/imlib2-loaders/imlib2-loaders-1.12.6.tar.gz",
  sha256  = "99d79146fc3b18cc35a46d1a4d9bdbf7480fc4a39a02f35330e8cd40a66aa28b",
  deps    = { "glibc", "imlib2", "libpng", "libjpeg-turbo", "libwebp", "libtiff", "openjpeg2", "bzip2", "cairo", "giflib", "glib", "libjxl", "librsvg" },
  archive = { strip = 1 },
  test    = function(p)
    p:run("test -f " .. p.install_root .. "/usr/lib/imlib2/loaders/png.so && test -f " .. p.install_root .. "/usr/lib/imlib2/loaders/jpeg.so && test -f " .. p.install_root .. "/usr/lib/imlib2/loaders/gif.so")
  end,
}
