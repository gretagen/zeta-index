return {
  name    = "gdk-pixbuf",
  version = "2.42.12-2",
  summary = "Image loading and scaling library (with png/jpeg/gif loader modules + loaders.cache)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/gdk-pixbuf/gdk-pixbuf-2.42.12-2.tar.gz",
  sha256  = "94a46e13ea2ec47a7e4c3c394551a3f73de2c7fdc3555b564f32db742f49e335",
  deps    = { "glibc", "glib", "libpng", "libjpeg-turbo", "shared-mime-info" },
  archive = { strip = 1 },
  test    = function(p)
    -- loader module set must be present (png/jpeg/gif) and cache rooted at /usr/lib
    p:run("test -f " .. p.install_root .. "/usr/lib/libgdk_pixbuf-2.0.so.0 && test -f " .. p.install_root .. "/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache")
    p:run("test -f " .. p.install_root .. "/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders/libpixbufloader-png.so && test -f " .. p.install_root .. "/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders/libpixbufloader-jpeg.so && test -f " .. p.install_root .. "/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders/libpixbufloader-gif.so")
    -- tripwire: loaders.cache must reference the rooted /usr/lib paths, not build/stage paths
    p:run("grep -q '^\"/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders/libpixbufloader' " .. p.install_root .. "/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache")
    -- tripwire: lib must link glib (the classic missing-glib latent bug)
    p:run("readelf -d " .. p.install_root .. "/usr/lib/libgdk_pixbuf-2.0.so.0 | grep -q libglib-2.0.so.0")
  end,
}