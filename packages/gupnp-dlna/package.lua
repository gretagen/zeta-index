return {
  name    = "gupnp-dlna",
  version = "0.12.0-5-x86_64",
  summary = "library to ease DLNA-related bits for applications using gupnp",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/gupnp-dlna/gupnp-dlna-0.12.0-5-x86_64.pkg.tar.zst",
  sha256  = "f5a0c4460d36a8393f7599d785a827022b87f6310b590e8b89bd12d6648caf73",
  deps    = { "glib", "glibc", "gst-plugins-base-libs", "gstreamer", "libxml2" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/lib/gupnp-dlna/libgstreamer.so")
  end,
}
