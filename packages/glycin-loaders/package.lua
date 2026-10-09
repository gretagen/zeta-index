return {
  name    = "glycin-loaders",
  version = "2.1.5",
  summary = "Image loader/editor modules for glycin (image-rs + svg)",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-constructs/refs/heads/main/packages/glycin-loaders/glycin-loaders-2.1.5.tar.gz",
  sha256  = "43e7ca0b3f4763b92df405e82053f49705a76949cae2bd5b0c2afdc6c8984c38",
  deps    = { "glibc", "libgcc", "glib", "librsvg", "cairo", "glycin" },
  archive = { strip = 1 },
  test    = function(p)
    -- the two loader modules must be present and executable
    p:run("test -x " .. p.install_root .. "/usr/lib/glycin-loaders/2+/glycin-image-rs && test -x " .. p.install_root .. "/usr/lib/glycin-loaders/2+/glycin-svg")
    -- conf.d configs must ship and reference the rooted /usr/lib exec paths
    p:run("test -f " .. p.install_root .. "/usr/share/glycin-loaders/2+/conf.d/glycin-image-rs.conf && grep -q \"Exec=/usr/lib/glycin-loaders/2+/glycin-image-rs\" " .. p.install_root .. "/usr/share/glycin-loaders/2+/conf.d/glycin-image-rs.conf")
    p:run("test -f " .. p.install_root .. "/usr/share/glycin-loaders/2+/conf.d/glycin-svg.conf && grep -q \"Exec=/usr/lib/glycin-loaders/2+/glycin-svg\" " .. p.install_root .. "/usr/share/glycin-loaders/2+/conf.d/glycin-svg.conf")
    -- thumbnailer CLI must link the matching glycin core
    p:run("test -x " .. p.install_root .. "/usr/bin/glycin-thumbnailer && readelf -d " .. p.install_root .. "/usr/bin/glycin-thumbnailer | grep -q libglycin-2.so.0")
    -- tripwire: svg loader must link librsvg; neither loader may drag libheif/libjxl (pending constructs)
    p:run("readelf -d " .. p.install_root .. "/usr/lib/glycin-loaders/2+/glycin-svg | grep -q librsvg-2.so.2")
    p:run("! readelf -d " .. p.install_root .. "/usr/lib/glycin-loaders/2+/glycin-image-rs " .. p.install_root .. "/usr/lib/glycin-loaders/2+/glycin-svg | grep -qE \"lib(heif|jxl)\"")
  end,
}
