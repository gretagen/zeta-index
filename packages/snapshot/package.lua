return {
  name    = "snapshot",
  version = "51.0-1-x86_64",
  summary = "take pictures and videos",
  url     = "https://raw.githubusercontent.com/gretagen/zeta-nemesis/main/snapshot/snapshot-51.0-1-x86_64.pkg.tar.zst",
  sha256  = "d6347b503e0a880e67a296b43354a9d2b2c713ca807d571e432eaa2f03f8c0fc",
  deps    = { "libdconf", "fontconfig", "glib", "glibc", "glycin", "glycin-gtk4", "graphene", "gst-plugin-gtk4", "gst-plugin-pipewire", "gst-plugins-bad-libs", "gst-plugins-base", "gst-plugins-base-libs", "gst-plugins-good", "gstreamer", "gtk4", "hicolor-icon-theme", "lcms2", "libadwaita", "libgcc", "libseccomp", "pango" },
  archive = { extract_arch_pkg = true },
  test    = function(p)
    p:run("test -e " .. p.install_root .. "/usr/bin/snapshot")
  end,
}
